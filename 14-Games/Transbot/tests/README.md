# Z80 routine tests

These tests execute machine code from the existing `output.sms`. This is the
intentionally patched ROM, not `TransBot_ORG.sms`. The tests do not rebuild or
modify either ROM.

From the Transbot directory on Windows, with Python 3.12 installed:

```powershell
py -3.12 -m venv tests\.venv
.\tests\.venv\Scripts\activate
.\tests\.venv\Scripts\python.exe -m pip install -r tests\requirements.txt
.\tests\.venv\Scripts\python.exe -m unittest discover -s tests -v
```

Rebuild `output.sms` separately after changing assembly if you want to test the
new code. The tests always read the ROM currently on disk; they do not verify
that it is up to date with the source. Fixed routine addresses must be updated
if code is relocated.

The first tests call `_LABEL_11A6_` in `engine\collision_manager.inc` and check
the four collision bounds, byte overflow, adjacent memory, and preserved input
registers. Each case starts with a fresh CPU and RAM, and execution has a
bounded tick budget.

The harness uses flat CPU memory, not a complete Master System emulator. It
does not currently emulate memory mirroring, VDP, sound, controller ports,
interrupts, or a full boot. Routines that depend on those need additional
emulation or explicit stubs.
