#!/usr/bin/env python3
"""Host contracts for the fail-closed Android 17 ActivityThread patcher."""
import importlib.util
import sys
from pathlib import Path


sys.dont_write_bytecode = True
spec = importlib.util.spec_from_file_location(
    "patcher", Path(__file__).with_name("patch-activitythread-a17.py")
)
patcher = importlib.util.module_from_spec(spec)
spec.loader.exec_module(patcher)

HOOK = "Landroid/security/kaorios/KaoriosHook;->initActivityThread(Ljava/lang/Object;)V"
checks = 0


def check(condition, message):
    global checks
    assert condition, message
    checks += 1


def expect_value_error(source, message):
    global checks
    try:
        patcher.patch(source)
    except ValueError:
        checks += 1
        return
    raise AssertionError(message)


def method(header=".method private handleBindApplication(Landroid/app/ActivityThread$AppBindData;)V", body=""):
    return f"{header}\n{body}.end method\n"


assignment = (
    "    iput-object p1, p0, "
    "Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;\n"
)

registers_source = method(body="    .registers 39\n" + assignment + "    return-void\n")
patched, changed = patcher.patch(registers_source)
check(changed, "normal .registers method was not patched")
check(".registers 39" in patched, "patcher changed .registers")
check(patched.count(HOOK) == 1, "normal method does not contain exactly one Object hook")
check(patched.index(HOOK) > patched.index(assignment.strip()), "hook is not after assignment")

locals_source = method(
    body=(
        "    .locals 7\n"
        "    .param p1, \"data\"    # Landroid/app/ActivityThread$AppBindData;\n"
        + assignment
        + "    invoke-virtual {p0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;\n"
        + "    move-result-object v0\n    return-void\n"
    )
)
locals_patched, changed = patcher.patch(locals_source)
check(changed and ".locals 7" in locals_patched, "normal .locals method was not preserved")
check(
    "invoke-virtual {p0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;\n"
    "    move-result-object v0" in locals_patched,
    "patcher split invoke/move-result adjacency",
)

again, changed = patcher.patch(patched)
check(not changed and again == patched, "exact Object hook is not idempotent")

decoy_source = method(
    body=(
        "    iget-object v0, p0, "
        "Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;\n"
        "    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;\n"
        "    move-result-object v0\n"
        + assignment
        + "    return-void\n"
    )
)
decoy_patched, _ = patcher.patch(decoy_source)
check(decoy_patched.index(HOOK) > decoy_patched.index(assignment.strip()), "decoy iget selected")

expect_value_error(
    method(body="    .registers 2\n    return-void\n"),
    "missing exact assignment accepted",
)

modifier_source = method(
    ".method public final synchronized handleBindApplication(Landroid/app/ActivityThread$AppBindData;)V",
    "    .locals 1\n" + assignment + "    return-void\n",
)
modifier_patched, changed = patcher.patch(modifier_source)
check(changed and modifier_patched.count(HOOK) == 1, "modifier-tolerant method match failed")

expect_value_error(
    registers_source + method(body="    .locals 1\n" + assignment + "    return-void\n"),
    "duplicate target methods accepted",
)
expect_value_error(
    method(
        ".method private handleBindApplication(Landroid/app/ActivityThread$AppBindData;I)V",
        "    .locals 1\n" + assignment + "    return-void\n",
    ),
    "wrong descriptor accepted",
)

crlf_source = registers_source.replace("\n", "\r\n")
crlf_patched, changed = patcher.patch(crlf_source)
check(changed and "\r\n" in crlf_patched and "\n" not in crlf_patched.replace("\r\n", ""), "CRLF was not preserved")

other_overload = (
    "    invoke-static {p1, p2}, Landroid/security/kaorios/KaoriosHook;->"
    "initActivityThread(Ljava/lang/String;Ljava/lang/String;)V\n"
)
overload_patched, changed = patcher.patch(method(body="    .locals 2\n" + other_overload + assignment + "    return-void\n"))
check(changed and overload_patched.count(HOOK) == 1, "other overload incorrectly prevented Object hook insertion")

print(f"OK ({checks} ActivityThread patcher checks)")
