"""Execute collision calculations directly from the patched game ROM."""

import unittest
from pathlib import Path

from z80 import Z80Machine


ROM_PATH = Path(__file__).resolve().parent.parent / "output.sms"
ROM_SIZE = 0x8000
COLLISION_BOUNDS = 0x11A6
RETURN_ADDRESS = 0x8000
STACK_ADDRESS = 0xDFF0
OBJECT_ADDRESS = 0xC300
BOUNDS_ADDRESS = 0xC108


def new_machine() -> Z80Machine:
    rom = ROM_PATH.read_bytes()
    if len(rom) != ROM_SIZE:
        raise ValueError(f"{ROM_PATH} must be {ROM_SIZE} bytes, got {len(rom)}")
    machine = Z80Machine()
    machine.set_memory_block(0, rom)
    return machine


def call_routine(machine: Z80Machine, address: int) -> None:
    machine.sp = STACK_ADDRESS
    machine.memory[STACK_ADDRESS : STACK_ADDRESS + 2] = RETURN_ADDRESS.to_bytes(
        2, "little"
    )
    machine.pc = address
    machine.set_breakpoint(RETURN_ADDRESS)
    machine.ticks_to_stop = 10000
    machine.run()
    if machine.pc != RETURN_ADDRESS:
        raise AssertionError(
            f"Routine at ${address:04X} did not return within the execution limit "
            f"(stopped at ${machine.pc:04X})"
        )
    if machine.sp != STACK_ADDRESS + 2:
        raise AssertionError(f"Routine returned with unexpected SP ${machine.sp:04X}")


class CollisionBoundsTests(unittest.TestCase):
    def test_bounds_calculation(self) -> None:
        cases = (
            # x, y, left offset, width, top offset, height, expected bounds
            (0x20, 0x40, 0x02, 0x04, 0x03, 0x05, (0x22, 0x26, 0x43, 0x48)),
            (0x00, 0x00, 0x00, 0x00, 0x00, 0x00, (0x00, 0x00, 0x00, 0x00)),
            (0xFF, 0xFE, 0x01, 0x02, 0x03, 0xFF, (0x00, 0x02, 0x01, 0x00)),
            (0x01, 0x02, 0xFF, 0xFF, 0xFE, 0xFF, (0x00, 0xFF, 0x00, 0xFF)),
        )
        for x, y, left, width, top, height, expected in cases:
            with self.subTest(x=x, y=y, left=left, width=width, top=top, height=height):
                machine = new_machine()
                machine.ix = OBJECT_ADDRESS
                machine.bc = (width << 8) | left
                machine.de = (height << 8) | top
                machine.memory[OBJECT_ADDRESS + 13] = x
                machine.memory[OBJECT_ADDRESS + 16] = y
                machine.memory[BOUNDS_ADDRESS - 1 : BOUNDS_ADDRESS + 5] = bytes(
                    [0xA5] * 6
                )

                call_routine(machine, COLLISION_BOUNDS)

                self.assertEqual(
                    bytes(machine.memory[BOUNDS_ADDRESS : BOUNDS_ADDRESS + 4]),
                    bytes(expected),
                )
                self.assertEqual(machine.memory[BOUNDS_ADDRESS - 1], 0xA5)
                self.assertEqual(machine.memory[BOUNDS_ADDRESS + 4], 0xA5)
                self.assertEqual(machine.ix, OBJECT_ADDRESS)
                self.assertEqual(machine.bc, (width << 8) | left)
                self.assertEqual(machine.de, (height << 8) | top)
                self.assertEqual(machine.memory[OBJECT_ADDRESS + 13], x)
                self.assertEqual(machine.memory[OBJECT_ADDRESS + 16], y)

    def test_execution_limit_stops_infinite_loop(self) -> None:
        machine = new_machine()
        machine.memory[0x8100:0x8102] = bytes((0x18, 0xFE))  # JR $8100
        with self.assertRaisesRegex(AssertionError, "did not return"):
            call_routine(machine, 0x8100)


if __name__ == "__main__":
    unittest.main()
