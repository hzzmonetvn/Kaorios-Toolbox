#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Kaorios Toolbox - Bionic FakeLock Patcher (ARM64 & ARM32)
Author: hzzmonetvn
License: GNU General Public License v3.0 (GPLv3)

Description:
    Standalone zero-root binary patcher for Android Bionic C library (libc.so).
    Virtualizes bootloader-locked properties via ELF code cave injection in __system_property_get.

    Features:
      - Full multi-architecture support: ARM64 (AArch64) and ARM32 (ARMv7-a / Thumb-2).
      - Strict ELF virtual-to-file address translation (PT_LOAD segment mapping).
      - Dual dynamic symbol resolution: Section Headers (.dynsym) & Program Headers (PT_DYNAMIC fallback).
      - Dynamic Code Cave allocation: Supports internal padding and inter-segment gaps with PT_LOAD expansion.
      - Trampoline preservation: Preserves stolen prologue instructions to prevent crashes.
      - 16KB Page Size compatible code cave allocation.
      - Spoofs:
          ro.boot.flash.locked -> "1"
          ro.boot.verifiedbootstate -> "green"
          ro.boot.vbmeta.device_state -> "locked"
"""

import os
import sys
import struct
import argparse

try:
    import keystone
except ImportError:
    print("[-] Error: 'keystone-engine' is required. Run: pip install keystone-engine")
    sys.exit(1)

try:
    import capstone
    HAS_CAPSTONE = True
except ImportError:
    HAS_CAPSTONE = False


class BionicPatcher:
    def __init__(self, libc_path, verbose=True):
        self.libc_path = libc_path
        self.verbose = verbose
        with open(libc_path, 'rb') as f:
            self.data = bytearray(f.read())

        self._detect_arch()
        self._init_engines()
        self._parse_elf()

    def log(self, msg):
        if self.verbose:
            print(f"[+] {msg}")

    def _detect_arch(self):
        """Identify ELF bitness and machine architecture"""
        assert self.data[:4] == b'\x7fELF', "Invalid ELF magic header!"
        ei_class = self.data[4]
        e_machine = struct.unpack('<H', self.data[18:20])[0]

        if ei_class == 2 and e_machine == 183:  # ELFCLASS64, EM_AARCH64
            self.is_64 = True
            self.arch_name = "ARM64 (AArch64)"
        elif ei_class == 1 and e_machine == 40:  # ELFCLASS32, EM_ARM
            self.is_64 = False
            self.arch_name = "ARM32 (ARMv7-a / Thumb-2)"
        else:
            raise ValueError(f"Unsupported architecture: class={ei_class}, machine={e_machine}")

        self.log(f"Target architecture: {self.arch_name}")

    def _init_engines(self):
        """Initialize Keystone assembler and optional Capstone disassembler"""
        if self.is_64:
            self.ks = keystone.Ks(keystone.KS_ARCH_ARM64, keystone.KS_MODE_LITTLE_ENDIAN)
            self.cs = capstone.Cs(capstone.CS_ARCH_ARM64, capstone.CS_MODE_ARM) if HAS_CAPSTONE else None
        else:
            self.ks = keystone.Ks(keystone.KS_ARCH_ARM, keystone.KS_MODE_THUMB)
            self.cs = capstone.Cs(capstone.CS_ARCH_ARM, capstone.CS_MODE_THUMB) if HAS_CAPSTONE else None

    def _parse_elf(self):
        """Parse ELF Program Headers (PT_LOAD, PT_DYNAMIC) and Section Headers"""
        if self.is_64:
            self.phoff = struct.unpack('<Q', self.data[32:40])[0]
            self.phentsize = struct.unpack('<H', self.data[54:56])[0]
            self.phnum = struct.unpack('<H', self.data[56:58])[0]
            self.shoff = struct.unpack('<Q', self.data[40:48])[0]
            self.shentsize = struct.unpack('<H', self.data[58:60])[0]
            self.shnum = struct.unpack('<H', self.data[60:62])[0]
        else:
            self.phoff = struct.unpack('<I', self.data[28:32])[0]
            self.phentsize = struct.unpack('<H', self.data[42:44])[0]
            self.phnum = struct.unpack('<H', self.data[44:46])[0]
            self.shoff = struct.unpack('<I', self.data[32:36])[0]
            self.shentsize = struct.unpack('<H', self.data[46:48])[0]
            self.shnum = struct.unpack('<H', self.data[48:50])[0]

        self.load_segments = []
        self.rx_segments = []
        self.dynamic_segment = None

        for i in range(self.phnum):
            off = self.phoff + i * self.phentsize
            ph = self.data[off : off + self.phentsize]
            if self.is_64:
                p_type, p_flags, p_offset, p_vaddr, p_paddr, p_filesz, p_memsz, p_align = struct.unpack('<IIQQQQQQ', ph)
            else:
                p_type, p_offset, p_vaddr, p_paddr, p_filesz, p_memsz, p_flags, p_align = struct.unpack('<IIIIIIII', ph)

            seg_info = {
                'ph_index': i,
                'ph_offset': off,
                'type': p_type,
                'flags': p_flags,
                'offset': p_offset,
                'vaddr': p_vaddr,
                'filesz': p_filesz,
                'memsz': p_memsz,
                'align': p_align
            }

            if p_type == 1:  # PT_LOAD
                self.load_segments.append(seg_info)
                if p_flags & 1:  # PF_X (Executable)
                    self.rx_segments.append(seg_info)
            elif p_type == 2:  # PT_DYNAMIC
                self.dynamic_segment = seg_info

        self.log(f"Parsed {len(self.load_segments)} PT_LOAD segments ({len(self.rx_segments)} executable RX).")

    def vaddr_to_offset(self, vaddr):
        """Translate Virtual Address (vaddr) to file offset using PT_LOAD headers"""
        for seg in self.load_segments:
            if seg['vaddr'] <= vaddr < (seg['vaddr'] + seg['memsz']):
                return seg['offset'] + (vaddr - seg['vaddr'])
        return None

    def offset_to_vaddr(self, offset):
        """Translate file offset to Virtual Address (vaddr) using PT_LOAD headers"""
        for seg in self.load_segments:
            if seg['offset'] <= offset < (seg['offset'] + seg['filesz']):
                return seg['vaddr'] + (offset - seg['offset'])
        return None

    def _parse_dynamic_table(self):
        """Parse PT_DYNAMIC segment when Section Headers are stripped"""
        if not self.dynamic_segment:
            return None

        dyn_offset = self.dynamic_segment['offset']
        dyn_filesz = self.dynamic_segment['filesz']
        entry_size = 16 if self.is_64 else 8
        num_entries = dyn_filesz // entry_size

        dt_symtab = None
        dt_strtab = None
        dt_strsz = None

        for i in range(num_entries):
            off = dyn_offset + i * entry_size
            if self.is_64:
                d_tag, d_val = struct.unpack('<qQ', self.data[off:off+16])
            else:
                d_tag, d_val = struct.unpack('<iI', self.data[off:off+8])

            if d_tag == 0:  # DT_NULL
                break
            elif d_tag == 6:  # DT_SYMTAB
                dt_symtab = d_val
            elif d_tag == 5:  # DT_STRTAB
                dt_strtab = d_val
            elif d_tag == 10:  # DT_STRSZ
                dt_strsz = d_val

        if dt_symtab and dt_strtab:
            sym_off = self.vaddr_to_offset(dt_symtab)
            str_off = self.vaddr_to_offset(dt_strtab)
            if sym_off is not None and str_off is not None:
                return {
                    'sym_offset': sym_off,
                    'str_offset': str_off,
                    'str_size': dt_strsz or 0x10000
                }
        return None

    def find_symbol_vaddr(self, sym_name):
        """Locate exported symbol Virtual Address (vaddr) via .dynsym or PT_DYNAMIC"""
        # 1. Primary: Section Headers (.dynsym)
        if self.shnum > 0 and self.shoff > 0:
            dynsym_hdr = None
            for i in range(self.shnum):
                off = self.shoff + i * self.shentsize
                if self.is_64:
                    sh_name, sh_type, _, _, sh_offset, sh_size, sh_link, _, _, sh_entsize = struct.unpack('<IIQQQQIIQQ', self.data[off:off+64])
                else:
                    sh_name, sh_type, _, _, sh_offset, sh_size, sh_link, _, _, sh_entsize = struct.unpack('<IIIIIIIIII', self.data[off:off+40])

                if sh_type == 11:  # SHT_DYNSYM
                    dynsym_hdr = (sh_offset, sh_size, sh_entsize, sh_link)
                    break

            if dynsym_hdr:
                str_idx = dynsym_hdr[3]
                off_str = self.shoff + str_idx * self.shentsize
                if self.is_64:
                    _, _, _, _, str_offset, str_size, _, _, _, _ = struct.unpack('<IIQQQQIIQQ', self.data[off_str:off_str+64])
                else:
                    _, _, _, _, str_offset, str_size, _, _, _, _ = struct.unpack('<IIIIIIIIII', self.data[off_str:off_str+40])

                strtab = self.data[str_offset : str_offset + str_size]
                sym_off, sym_size, sym_entsize, _ = dynsym_hdr
                num_syms = sym_size // sym_entsize

                for j in range(num_syms):
                    entry_off = sym_off + j * sym_entsize
                    if self.is_64:
                        st_name, _, _, _, st_value, _ = struct.unpack('<IBBHQQ', self.data[entry_off:entry_off+24])
                    else:
                        st_name, st_value, _, _, _, _ = struct.unpack('<IIIBBH', self.data[entry_off:entry_off+16])

                    end = strtab.find(b'\x00', st_name)
                    name = strtab[st_name:end].decode('ascii', errors='ignore')
                    if name == sym_name:
                        return st_value & ~1

        # 2. Secondary: Program Headers (PT_DYNAMIC fallback for stripped binaries)
        dyn_info = self._parse_dynamic_table()
        if dyn_info:
            sym_off = dyn_info['sym_offset']
            str_off = dyn_info['str_offset']
            str_size = dyn_info['str_size']
            strtab = self.data[str_off : str_off + str_size]
            sym_entsize = 24 if self.is_64 else 16

            for j in range(8192):
                entry_off = sym_off + j * sym_entsize
                if entry_off + sym_entsize > len(self.data):
                    break
                if self.is_64:
                    st_name, _, _, _, st_value, _ = struct.unpack('<IBBHQQ', self.data[entry_off:entry_off+24])
                else:
                    st_name, st_value, _, _, _, _ = struct.unpack('<IIIBBH', self.data[entry_off:entry_off+16])

                if st_name >= len(strtab):
                    continue
                end = strtab.find(b'\x00', st_name)
                name = strtab[st_name:end].decode('ascii', errors='ignore')
                if name == sym_name:
                    self.log(f"Resolved symbol '{sym_name}' via PT_DYNAMIC fallback.")
                    return st_value & ~1

        return None

    def find_system_property_get(self):
        """Locate __system_property_get returning (file_offset, vaddr)"""
        vaddr = self.find_symbol_vaddr('__system_property_get')
        if vaddr is not None:
            offset = self.vaddr_to_offset(vaddr)
            if offset is not None:
                self.log(f"Located '__system_property_get': vaddr=0x{vaddr:X}, offset=0x{offset:X}")
                return offset, vaddr

        # 3. Tertiary: Bytecode pattern fallback for heavily obfuscated/stripped ARM64 binaries
        if self.is_64:
            pattern = bytes([0xe2, 0x03, 0x01, 0xaa, 0xe1, 0x03, 0x00, 0xaa])
            idx = self.data.find(pattern)
            if idx != -1:
                target_offset = idx - 8
                target_vaddr = self.offset_to_vaddr(target_offset)
                if target_vaddr is not None:
                    self.log(f"Located '__system_property_get' via bytecode pattern: offset=0x{target_offset:X}, vaddr=0x{target_vaddr:X}")
                    return target_offset, target_vaddr

        return None, None

    def _expand_segment_size(self, seg, new_size):
        """Update p_filesz and p_memsz of PT_LOAD segment in Program Headers"""
        off = seg['ph_offset']
        if self.is_64:
            new_filesz = max(seg['filesz'], new_size)
            new_memsz = max(seg['memsz'], new_size)
            struct.pack_into('<QQ', self.data, off + 32, new_filesz, new_memsz)
            seg['filesz'] = new_filesz
            seg['memsz'] = new_memsz
            self.log(f"Expanded RX PT_LOAD program header: filesz=0x{new_filesz:X}, memsz=0x{new_memsz:X}")
        else:
            new_filesz = max(seg['filesz'], new_size)
            new_memsz = max(seg['memsz'], new_size)
            struct.pack_into('<II', self.data, off + 16, new_filesz, new_memsz)
            seg['filesz'] = new_filesz
            seg['memsz'] = new_memsz
            self.log(f"Expanded RX PT_LOAD program header: filesz=0x{new_filesz:X}, memsz=0x{new_memsz:X}")

    def find_code_cave(self, needed_size=512):
        """
        Locate or allocate code cave in executable (RX) segments.
        Strategy 1: Trailing zero padding inside the segment.
        Strategy 2: Inter-segment alignment gap with dynamic PT_LOAD expansion.
        """
        align_boundary = 16 if self.is_64 else 4

        # Strategy 1: Check internal zero blocks in RX segment
        for seg in self.rx_segments:
            p_offset = seg['offset']
            p_filesz = seg['filesz']
            seg_data = self.data[p_offset : p_offset + p_filesz]

            zero_count = 0
            for j in range(len(seg_data) - 1, -1, -1):
                if seg_data[j] == 0:
                    zero_count += 1
                else:
                    if zero_count >= needed_size:
                        cave_start = j + 1
                        aligned_start = (cave_start + (align_boundary - 1)) & ~(align_boundary - 1)
                        cave_offset = p_offset + aligned_start
                        cave_vaddr = self.offset_to_vaddr(cave_offset)
                        self.log(f"Code cave allocated inside RX segment: offset=0x{cave_offset:X}, vaddr=0x{cave_vaddr:X} (Size: {zero_count} bytes)")
                        return cave_offset, cave_vaddr
                    zero_count = 0

        # Strategy 2: Inter-segment alignment gap after RX segment
        for seg in self.rx_segments:
            seg_end_off = seg['offset'] + seg['filesz']
            # Find next segment start
            next_off = len(self.data)
            for other in self.load_segments:
                if other['offset'] > seg['offset'] and other['offset'] < next_off:
                    next_off = other['offset']

            gap_size = next_off - seg_end_off
            if gap_size >= needed_size:
                cave_offset = (seg_end_off + (align_boundary - 1)) & ~(align_boundary - 1)
                cave_vaddr = seg['vaddr'] + (cave_offset - seg['offset'])
                self.log(f"Code cave allocated in inter-segment alignment gap: offset=0x{cave_offset:X}, vaddr=0x{cave_vaddr:X} (Gap: {gap_size} bytes)")
                # Expand RX segment in Program Header so the kernel/linker maps the cave
                self._expand_segment_size(seg, (cave_offset + needed_size) - seg['offset'])
                return cave_offset, cave_vaddr

        return None, None

    def generate_arm64_hook(self, target_after_vaddr, stolen_asm):
        """
        Generate ARM64 hook with transparent trampoline.
        Preserves original stolen prologue instruction before returning to libc.
        """
        return f"""
        cbz x0, orig_get
        ldr x2, [x0]
        adr x3, c_ro_boot_g
        ldr x3, [x3]
        cmp x2, x3
        b.ne orig_get

        // flash.locked
        ldr x2, [x0, #8]
        adr x3, c_flash_lo_g
        ldr x3, [x3]
        cmp x2, x3
        b.ne check_verified_g
        ldr w2, [x0, #16]
        adr x3, c_cked_g
        ldr w3, [x3]
        cmp w2, w3
        b.ne check_verified_g
        ldrb w2, [x0, #20]
        cbnz w2, check_verified_g
        mov w2, #0x31
        strh w2, [x1]
        mov w0, #1
        ret

    check_verified_g:
        // verifiedbootstate
        adr x3, c_verified_g
        ldr x3, [x3]
        cmp x2, x3
        b.ne check_vbmeta_g
        ldr x2, [x0, #16]
        adr x3, c_bootstat_g
        ldr x3, [x3]
        cmp x2, x3
        b.ne check_vbmeta_g
        ldrh w2, [x0, #24]
        cmp w2, #0x65
        b.ne check_vbmeta_g
        mov w2, #0x7267
        movk w2, #0x6565, lsl #16
        str w2, [x1]
        mov w2, #0x6e
        strh w2, [x1, #4]
        mov w0, #5
        ret

    check_vbmeta_g:
        // vbmeta.device_state
        adr x3, c_vbmeta_g
        ldr x3, [x3]
        cmp x2, x3
        b.ne orig_get
        ldr x2, [x0, #16]
        adr x3, c_dev_state_g
        ldr x3, [x3]
        cmp x2, x3
        b.ne orig_get
        ldrh w2, [x0, #24]
        cmp w2, #0x65
        b.ne orig_get
        mov w2, #0x6f6c
        movk w2, #0x6b63, lsl #16
        str w2, [x1]
        mov w2, #0x6465
        strh w2, [x1, #4]
        mov w0, #6
        ret

    orig_get:
        // Trampoline: execute preserved original prologue instruction
        {stolen_asm}
        b 0x{target_after_vaddr:X}

    .p2align 3
    c_ro_boot_g:    .quad 0x2e746f6f622e6f72
    c_flash_lo_g:   .quad 0x6f6c2e6873616c66
    c_cked_g:       .int  0x64656b63
    c_verified_g:   .quad 0x6465696669726576
    c_bootstat_g:   .quad 0x74617473746f6f62
    c_vbmeta_g:     .quad 0x65642e6174656d62
    c_dev_state_g:  .quad 0x74735f65636976
        """

    def generate_arm32_hook(self, target_after_vaddr, stolen_asm):
        """
        Generate ARM32 Thumb-2 hook with transparent trampoline.
        Preserves original stolen prologue instruction before returning to libc.
        """
        low_w = target_after_vaddr & 0xffff
        high_w = (target_after_vaddr >> 16) & 0xffff
        return f"""
        cbz r0, orig_get

        // Check 'ro.b' and 'oot.'
        ldr r2, [r0]
        movw r3, #0x6f72
        movt r3, #0x622e
        cmp r2, r3
        bne orig_get

        ldr r2, [r0, #4]
        movw r3, #0x6f6f
        movt r3, #0x2e74
        cmp r2, r3
        bne orig_get

    check_flash:
        // 'flash.locked'
        ldr r2, [r0, #8]
        movw r3, #0x6c66
        movt r3, #0x7361
        cmp r2, r3
        bne check_verified
        ldr r2, [r0, #12]
        movw r3, #0x2e68
        movt r3, #0x6f6c
        cmp r2, r3
        bne check_verified
        ldr r2, [r0, #16]
        movw r3, #0x6b63
        movt r3, #0x6465
        cmp r2, r3
        bne check_verified
        ldrb r2, [r0, #20]
        cbnz r2, check_verified

        // Output: '1\\0'
        movs r2, #0x31
        strb r2, [r1]
        movs r2, #0
        strb r2, [r1, #1]
        movs r0, #1
        bx lr

    check_verified:
        // 'verifiedbootstate'
        ldr r2, [r0, #8]
        movw r3, #0x6576
        movt r3, #0x6972
        cmp r2, r3
        bne check_vbmeta
        ldr r2, [r0, #12]
        movw r3, #0x6966
        movt r3, #0x6465
        cmp r2, r3
        bne check_vbmeta
        ldr r2, [r0, #16]
        movw r3, #0x6f62
        movt r3, #0x746f
        cmp r2, r3
        bne check_vbmeta
        ldr r2, [r0, #20]
        movw r3, #0x7473
        movt r3, #0x7461
        cmp r2, r3
        bne check_vbmeta
        ldrh r2, [r0, #24]
        cmp r2, #0x65
        bne check_vbmeta

        // Output: 'green\\0'
        movw r2, #0x7267
        movt r2, #0x6565
        str r2, [r1]
        movs r2, #0x6e
        strb r2, [r1, #4]
        movs r2, #0
        strb r2, [r1, #5]
        movs r0, #5
        bx lr

    check_vbmeta:
        // 'vbmeta.device_state'
        ldr r2, [r0, #8]
        movw r3, #0x656d
        movt r3, #0x6562
        cmp r2, r3
        bne orig_get
        ldr r2, [r0, #12]
        movw r3, #0x6174
        movt r3, #0x642e
        cmp r2, r3
        bne orig_get
        ldr r2, [r0, #16]
        movw r3, #0x7665
        movt r3, #0x6369
        cmp r2, r3
        bne orig_get

        // Output: 'locked\\0'
        movw r2, #0x6f6c
        movt r2, #0x6b63
        str r2, [r1]
        movs r2, #0x64
        strb r2, [r1, #4]
        movs r2, #0x65
        strb r2, [r1, #5]
        movs r2, #0
        strb r2, [r1, #6]
        movs r0, #6
        bx lr

    orig_get:
        // Trampoline: execute preserved original prologue instruction
        {stolen_asm}
        movw r3, #{hex(low_w)}
        movt r3, #{hex(high_w)}
        bx r3
        """

    def apply_branch(self, from_offset, from_vaddr, to_vaddr):
        """Construct architecture-specific branch instruction"""
        if self.is_64:
            delta = (to_vaddr - from_vaddr) // 4
            inst = struct.pack('<I', 0x14000000 | (delta & 0x03ffffff))
            self.data[from_offset : from_offset + 4] = inst
        else:
            # Thumb-2 32-bit branch: B.W to_vaddr
            enc, _ = self.ks.asm(f"b.w 0x{to_vaddr:X}", from_vaddr)
            self.data[from_offset : from_offset + len(enc)] = bytearray(enc)

    def patch(self, output_path):
        self.log(f"Starting Bionic FakeLock patch for {self.arch_name}...")

        target_offset, target_vaddr = self.find_system_property_get()
        if target_offset is None or target_vaddr is None:
            raise RuntimeError(
                f"[-] Failed to locate '__system_property_get' in {self.arch_name}. "
                "Ensure libc.so contains valid .dynsym or exported symbols."
            )

        cave_offset, cave_vaddr = self.find_code_cave(needed_size=512)
        if cave_offset is None or cave_vaddr is None:
            raise RuntimeError(
                f"[-] Failed to allocate dynamic code cave (512 bytes) in executable segments. "
                "Ensure libc.so has valid RX PT_LOAD segments with trailing alignment padding."
            )

        # 1. Read stolen bytes (original instructions to be overwritten by the hook branch)
        hook_branch_len = 4  # Both ARM64 B and Thumb-2 B.W are 4 bytes
        stolen_raw = bytes(self.data[target_offset : target_offset + hook_branch_len])
        target_after_vaddr = target_vaddr + hook_branch_len

        # 2. Disassemble for logging and emit exact bit-for-bit words for trampoline
        if self.cs:
            disasms = list(self.cs.disasm(stolen_raw, target_vaddr))
            if disasms:
                human_asm = "; ".join(f"{insn.mnemonic} {insn.op_str}" for insn in disasms)
                self.log(f"Preserved original prologue ({len(disasms)} insn): {human_asm}")
        else:
            self.log(f"Preserved original prologue bytes: {stolen_raw.hex()}")

        # Using exact raw word/halfword directives guarantees bit-perfect trampoline
        # while seamlessly supporting ARMv9 BTI (bti c) and PAC (paciasp)
        if self.is_64:
            stolen_val = struct.unpack('<I', stolen_raw)[0]
            stolen_asm = f".word 0x{stolen_val:08X}"
        else:
            w1, w2 = struct.unpack('<HH', stolen_raw)
            stolen_asm = f".short 0x{w1:04X}\n        .short 0x{w2:04X}"

        # 3. Generate hook assembly with trampoline
        if self.is_64:
            asm_code = self.generate_arm64_hook(target_after_vaddr, stolen_asm)
        else:
            # For Thumb, target vaddr must have bit 0 set
            asm_code = self.generate_arm32_hook(target_after_vaddr | 1, stolen_asm)

        encoding, count = self.ks.asm(asm_code, cave_vaddr)
        hook_bytes = bytearray(encoding)
        self.log(f"Assembled {self.arch_name} hook: {len(hook_bytes)} bytes ({count} instructions).")

        self.data[cave_offset : cave_offset + len(hook_bytes)] = hook_bytes
        self.apply_branch(target_offset, target_vaddr, cave_vaddr)
        self.log(f"Patched '__system_property_get': 0x{target_vaddr:X} -> 0x{cave_vaddr:X}")

        with open(output_path, 'wb') as f:
            f.write(self.data)

        self.log(f"Patched libc saved to: {output_path}")
        self.log(f"File size intact: {len(self.data)} bytes")


def main():
    parser = argparse.ArgumentParser(
        description="Kaorios Toolbox - Bionic FakeLock Patcher (ARM64 & ARM32)"
    )
    parser.add_argument("input", help="Path to libc.so extracted from device (ARM64 or ARM32)")
    parser.add_argument("-o", "--output", default="libc_patched.so", help="Output patched libc.so path")
    args = parser.parse_args()

    if not os.path.exists(args.input):
        print(f"[-] File not found: {args.input}")
        sys.exit(1)

    patcher = BionicPatcher(args.input)
    patcher.patch(args.output)


if __name__ == '__main__':
    main()
