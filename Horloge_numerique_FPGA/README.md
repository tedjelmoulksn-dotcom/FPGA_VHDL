# VHDL Digital Clock — Nexys A7

Building blocks for a 24-hour HH:MM:SS clock with six multiplexed seven-segment digits and accelerated time-setting modes.

## Hardware and interface

The archived constraints target a Digilent Nexys A7-100T, Artix-7 FPGA, with a 100 MHz oscillator. The board's common-anode display signals are active low. BTNC resets the counter; BTNU and BTND select accelerated modes.

## Source modules

| Source | Role |
|---|---|
| [`Synchro_Horloge_Numerique_N.vhd`](src/Synchro_Horloge_Numerique_N.vhd) | Clock division and cadence selection |
| [`Compteur_Horloge_N.vhd`](src/Compteur_Horloge_N.vhd) | Cascaded BCD seconds, minutes and hours |
| [`table_de_decode2_to_6.vhd`](src/table_de_decode2_to_6.vhd) | Active-low selection of six display positions |
| [`BCD.vhd`](src/BCD.vhd) | Seven-segment decoding, including hexadecimal values |
| [Constraints](constraints/nexys_a7_100t_horloge.xdc) | Board pin assignments derived from the Digilent master file |

The preserved blocks cover counting, cadence selection and decoding. Integration adds a top-level interconnection, digit multiplexer and scan counter to coordinate the shared segment bus and active anode.

## Timing and counting

The design selects nominal 1 Hz operation or accelerated counting. The fast divider corresponds to approximately 1 kHz. The intermediate divider counts to 1,000,000, giving approximately 100 Hz from 100 MHz despite a 10 Hz comment.

BCD counters implement seconds/minutes carries and a 24-hour rollover. `Empty` and `Full` expose boundary indicators, but the `Full` condition swaps the hour digits and therefore does not recognise 23:59:59 correctly.

## Pin summary

| Signal | Pins |
|---|---|
| Board clock | E3 |
| Reset / fast / intermediate buttons | N17 / M18 / P18 |
| Segments a–g | T10, R10, K16, K13, P15, T11, L18 |
| Decimal point | H15 |
| Six display anodes | J17, J18, T9, J14, P14, T14 |
| Additional anodes | K2, U13 |
| Empty / Full LEDs | V17 / V11 |

Match top-level port names to the XDC before elaboration.

## Integration workflow

Create a compatible Vivado project, add the VHDL blocks and reconstruct the missing top-level/display logic. Add testbenches for reset, minute/hour carries, midnight rollover and mode changes before synthesis.

The current counter receives a derived, combinationally selected clock. A single-clock design with clock-enable pulses would simplify timing analysis and avoid clock-switching hazards. The declared `Enable` input is unused, and legacy arithmetic packages should be reviewed for migration to `numeric_std`.

## Validation

Validate in stages: simulate BCD carries and rollover, inspect display scan timing, then check synthesis constraints and clock paths. The integration workflow above supplies the additional top-level/display logic.

## Licence

No project-wide licence has been defined. The constraint template retains its original attribution.
