#!/usr/bin/env python3
"""Filter installer read results in verified ComputerEngine layouts, fail-closed."""
import argparse
import re
from pathlib import Path

HOOK = 'Landroid/security/kaorios/KaoriosHook;->filterInstallerPackageName(Landroid/content/ContentResolver;IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;'
METHOD = re.compile(r'(?m)^\.method (?P<header>[^\n]+)\n(?P<body>.*?)^\.end method', re.S)
SIGNATURES = {
    'getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;',
    'getInstallerPackageName(Ljava/lang/String;I)Ljava/lang/String;',
    'getInstallSourceInfo(Ljava/lang/String;)Landroid/content/pm/InstallSourceInfo;',
    'getInstallSourceInfo(Ljava/lang/String;I)Landroid/content/pm/InstallSourceInfo;',
}
INIT = 'Landroid/content/pm/InstallSourceInfo;-><init>'


def executable(body):
    return [(i, s) for i, line in enumerate(body.splitlines())
            if (s := line.split('#', 1)[0].strip()) and not s.startswith('.')]


def registers(invocation):
    raw = invocation.split('{', 1)[1].split('}', 1)[0].strip()
    if not raw:
        return []
    if '..' in raw:
        first, last = [x.strip() for x in raw.split('..')]
        if first[0] != last[0]:
            raise ValueError('UNSUPPORTED_LAYOUT: mixed register range')
        return [first[0] + str(n) for n in range(int(first[1:]), int(last[1:]) + 1)]
    return [x.strip() for x in raw.split(',')]


def stock_sites(body, base, width, modern):
    """Conservative CFG provenance: installer must derive from the stock source read."""
    code = executable(body)
    labels = {s: n for n, (_, s) in enumerate(code) if s.startswith(':')}
    if any('switch' in s or s.startswith(('fill-array', '.catch')) for _, s in code) or '.catch' in body:
        raise ValueError('UNSUPPORTED_LAYOUT: exceptional/switch control flow')
    initial = {f'v{base}': frozenset({'receiver'}), f'v{base+1}': frozenset({'target'})}
    if width == 3:
        initial[f'v{base+2}'] = frozenset({'user'})
    states = {0: initial}
    queue = [0]
    sites = {}
    unknown = frozenset({'unknown'})
    while queue:
        n = queue.pop()
        env = dict(states[n])
        line_no, instruction = code[n]
        regs = re.findall(r'\b[vp]\d+\b', instruction.split(', L')[0])
        def value(reg):
            return env.get(reg, unknown)
        if instruction.startswith('invoke-'):
            args = registers(instruction)
            target = instruction.split('},', 1)[1].strip()
            env['$result'] = unknown
            if target == 'Landroid/os/Binder;->getCallingUid()I':
                if env.get('$cleared'):
                    raise ValueError('UNSUPPORTED_LAYOUT: UID read after identity clear')
                env['$result'] = frozenset({'uid'})
            elif target == 'Landroid/os/Binder;->clearCallingIdentity()J':
                env['$cleared'] = frozenset({'yes'})
            elif target.startswith('Lcom/android/server/pm/ComputerEngine;->getInstallSource('):
                expected = ['receiver', 'target', 'uid'] + (['user'] if width == 3 else [])
                if len(args) != len(expected) or any(value(r) != frozenset({tag}) for r, tag in zip(args, expected)):
                    raise ValueError('UNSUPPORTED_LAYOUT: stock source caller/target/user provenance')
                env['$result'] = frozenset({'source'})
            elif target.startswith(INIT):
                supported = {
                    '(Ljava/lang/String;Landroid/content/pm/SigningInfo;Ljava/lang/String;Ljava/lang/String;I)V': 6,
                    '(Ljava/lang/String;Landroid/content/pm/SigningInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V': 7,
                }
                descriptor = target[len(INIT):]
                if not modern or supported.get(descriptor) != len(args):
                    raise ValueError('UNSUPPORTED_LAYOUT: InstallSourceInfo constructor')
                tag = value(args[4])
                if 'installer' not in tag or not tag <= {'installer', 'null'}:
                    raise ValueError('UNSUPPORTED_LAYOUT: installing argument is not stock installer')
                sites[line_no] = args[4]
                receiver = value(args[0])
                if len(receiver) != 1 or not next(iter(receiver)).startswith('new:'):
                    raise ValueError('UNSUPPORTED_LAYOUT: constructor receiver')
                for register, tags in list(env.items()):
                    if tags == receiver:
                        env[register] = frozenset({'info'})
        elif instruction.startswith('move-result'):
            env[regs[0]] = env.pop('$result', unknown)
        elif instruction.startswith('move'):
            env[regs[0]] = value(regs[1])
        elif instruction.startswith('iget-object') and re.search(r'Lcom/android/server/pm/InstallSource;->(?:mInstallerPackageName|installerPackageName):Ljava/lang/String;', instruction):
            if value(regs[1]) != frozenset({'source'}):
                raise ValueError('UNSUPPORTED_LAYOUT: installer field source')
            env[regs[0]] = frozenset({'installer'})
        elif instruction.startswith('new-instance'):
            env[regs[0]] = frozenset({f'new:{line_no}'})
        elif instruction.startswith('const'):
            env[regs[0]] = frozenset({'null'}) if re.search(r',\s*0x0$', instruction) else unknown
        elif instruction.startswith('return-object'):
            tags = value(regs[0])
            if modern:
                if not tags <= {'null', 'info'}:
                    raise ValueError('UNSUPPORTED_LAYOUT: unverified InstallSourceInfo return')
            elif tags <= {'installer', 'null'} and 'installer' in tags:
                sites[line_no] = regs[0]
            elif tags != frozenset({'null'}):
                raise ValueError('UNSUPPORTED_LAYOUT: unverified installer return')
        elif regs and not instruction.startswith(('if-', 'return', 'throw', 'iput', 'sput', 'aput', 'monitor-', ':', 'goto', 'check-cast')):
            env[regs[0]] = unknown
        successors = []
        if instruction.startswith(('return', 'throw')):
            pass
        elif instruction.startswith('goto'):
            successors.append(labels[instruction.split()[-1]])
        else:
            if n + 1 < len(code):
                successors.append(n + 1)
            if instruction.startswith('if-'):
                successors.append(labels[instruction.split(',')[-1].strip()])
        for successor in successors:
            previous = states.get(successor)
            merged = env if previous is None else {key: previous.get(key, unknown) | env.get(key, unknown) for key in previous.keys() | env.keys()}
            if previous != merged:
                states[successor] = dict(merged)
                queue.append(successor)
    if not sites or (modern and len(sites) != 1):
        raise ValueError('UNSUPPORTED_LAYOUT: expected proven installer return/constructor')
    return sites


def normalize(method):
    header, body = method['header'], method['body']
    if 'static' in header.split():
        raise ValueError('UNSUPPORTED_LAYOUT: static API')
    width = 3 if 'Ljava/lang/String;I)' in header else 2
    matches = list(re.finditer(r'(?m)^\s*\.(locals|registers)\s+(\d+)\s*$', body))
    if len(matches) != 1:
        raise ValueError('UNSUPPORTED_LAYOUT: register directive')
    directive = matches[0]
    count = int(directive[2])
    base = count if directive[1] == 'locals' else count - width
    total = base + width
    if base < 0 or total + 4 > 255:
        raise ValueError('UNSUPPORTED_LAYOUT: register limits')
    # Preserve every stock physical register. Copy parameters to their old slots
    # at entry, then use fresh locals for the hook; no stock 35c operands shift.
    lines = body.splitlines()
    for i, line in enumerate(lines):
        if line.strip().startswith('.param'):
            continue
        instruction, separator, comment = line.partition('#')
        parts = re.split(r'("(?:\\.|[^"\\])*")', instruction)
        instruction = ''.join(part if i % 2 else re.sub(r'\bp(\d+)\b', lambda m: f'v{base+int(m[1])}', part) for i, part in enumerate(parts))
        lines[i] = instruction + separator + comment
    body = '\n'.join(lines) + '\n'
    return body, base, width, total


def hook_block(scratch, real):
    return (f'    move-object/16 v{scratch+4}, {real}\n'
            f'    invoke-static/range {{v{scratch} .. v{scratch+4}}}, {HOOK}\n'
            f'    move-result-object {real}\n')


def patch_method(method):
    body, base, width, scratch = normalize(method)
    modern = method['header'].split()[-1].startswith('getInstallSourceInfo(')
    sites = stock_sites(body, base, width, modern)
    lines = body.splitlines(keepends=True)
    for line_no, real in sorted(sites.items(), reverse=True):
        lines.insert(line_no, hook_block(scratch, real))
    body = ''.join(lines)
    directive = re.search(r'(?m)^\s*\.(?:locals|registers)\s+\d+\s*$', body)
    body = body[:directive.start()] + f'    .locals {scratch+5}\n' + body[directive.end():]
    prologue = ''.join(f'    move{"-object" if i < 2 else ""}/16 v{base+i}, p{i}\n' for i in range(width))
    prologue += (f'    const/16 v{scratch}, 0x0\n'
                 '    invoke-static {}, Landroid/os/Binder;->getCallingUid()I\n'
                 f'    move-result v{scratch+1}\n'
                 f'    move-object/16 v{scratch+3}, v{base+1}\n')
    if width == 3:
        prologue += f'    move/16 v{scratch+2}, v{base+2}\n'
    else:
        prologue += (f'    invoke-static/range {{v{scratch+1} .. v{scratch+1}}}, Landroid/os/UserHandle;->getUserId(I)I\n'
                     f'    move-result v{scratch+2}\n')
    # Place executable entry before the first stock label/instruction, after metadata.
    position = executable(body)[0][0]
    lines = body.splitlines(keepends=True)
    lines.insert(position, prologue)
    return '.method ' + method['header'] + '\n' + ''.join(lines) + '.end method'


def target_methods(text):
    if not re.search(r'(?m)^\s*\.class [^\n]*Lcom/android/server/pm/ComputerEngine;\s*$', text):
        raise ValueError('UNSUPPORTED_LAYOUT: expected ComputerEngine class')
    matches = [m for m in METHOD.finditer(text) if m['header'].split()[-1] in SIGNATURES]
    if len(matches) != 2 or len({m['header'].split()[-1].split('(')[0] for m in matches}) != 2:
        raise ValueError('UNSUPPORTED_LAYOUT: require both installer APIs exactly once')
    return matches


def canonical(text):
    lines = []
    for line in text.splitlines():
        value = line.split('#', 1)[0].strip()
        if not value or re.match(r"\.(?:line|local|end local|restart local|param|prologue|epilogue)\b", value):
            continue
        lines.append(value if value.startswith(('.method ', '.end method')) else '    ' + value)
    text = '\n'.join(lines) + '\n'
    for method in reversed(list(METHOD.finditer(text))):
        width = 3 if 'Ljava/lang/String;I)' in method['header'] else 2
        normalized = re.sub(r'(?m)^    \.registers (\d+)$', lambda m: '    .locals ' + str(int(m[1])-width), method[0])
        text = text[:method.start()] + normalized + text[method.end():]
    return text


def verify(text):
    canonical_text = canonical(text)
    targets = target_methods(canonical_text)
    if canonical_text.count(HOOK) != sum(m[0].count(HOOK) for m in targets):
        raise ValueError('installer hook outside supported read APIs')
    for method in targets:
        body = method['body']
        directive = re.search(r'(?m)^\s*\.locals\s+(\d+)\s*$', body)
        if not directive:
            raise ValueError('missing allocated locals')
        scratch = int(directive[1]) - 5
        width = 3 if 'Ljava/lang/String;I)' in method['header'] else 2
        base = scratch - width
        # Regenerate the entry from an empty proven stock method's parameter slots.
        prologue = ''.join(f'    move{"-object" if i < 2 else ""}/16 v{base+i}, p{i}\n' for i in range(width))
        prologue += (f'    const/16 v{scratch}, 0x0\n'
                     '    invoke-static {}, Landroid/os/Binder;->getCallingUid()I\n'
                     f'    move-result v{scratch+1}\n'
                     f'    move-object/16 v{scratch+3}, v{base+1}\n')
        prologue += (f'    move/16 v{scratch+2}, v{base+2}\n' if width == 3 else
                     f'    invoke-static/range {{v{scratch+1} .. v{scratch+1}}}, Landroid/os/UserHandle;->getUserId(I)I\n    move-result v{scratch+2}\n')
        if body.count(prologue) != 1:
            raise ValueError('missing/altered original caller, target or user capture')
        first = executable(body)[0][0]
        if ''.join(body.splitlines(keepends=True)[first:]).find(prologue) != 0:
            raise ValueError('caller capture must precede stock instructions and identity clear')
        stock = body.replace(prologue, '', 1)
        pattern = re.compile(r'    move-object/16 v' + str(scratch+4) + r', ([vp]\d+)\n    invoke-static/range \{v' + str(scratch) + r' \.\. v' + str(scratch+4) + r'\}, ' + re.escape(HOOK) + r'\n    move-result-object \1\n')
        blocks = list(pattern.finditer(stock))
        if not blocks or len(blocks) != stock.count(HOOK):
            raise ValueError('partial or duplicate installer hook')
        stock = pattern.sub('', stock)
        stock = re.sub(r'(?m)^\s*\.locals\s+\d+\s*$', f'    .registers {scratch}\n', stock, count=1)
        candidate = METHOD.fullmatch('.method ' + method['header'] + '\n' + stock + '.end method')
        if canonical(patch_method(candidate)) != canonical(method[0]):
            raise ValueError('hook coverage/position/value differs from proven stock return paths')


def patch(text):
    if HOOK in text:
        verify(text)
        return text, False
    for method in reversed(target_methods(text)):
        text = text[:method.start()] + patch_method(method) + text[method.end():]
    verify(text)
    return text, True


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('smali', type=Path)
    parser.add_argument('--verify-only', action='store_true')
    args = parser.parse_args()
    text = args.smali.read_text()
    if args.verify_only:
        verify(text)
        print('VERIFIED_LAYOUT')
    else:
        patched, changed = patch(text)
        if changed:
            args.smali.write_text(patched)
        print('PATCHED' if changed else 'ALREADY_PATCHED')


if __name__ == '__main__':
    main()
