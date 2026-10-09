# FPGA and VHDL — Digital Control and Display Logic

A digital-design portfolio covering combinational decoding, counters, multiplexed seven-segment displays and finite-state control. The main applications are a digital clock and an FM-frequency tuning interface.

## Repository map

| Module | Content |
|---|---|
| [Digital clock](Horloge_numerique_FPGA/) | HH:MM:SS counters, decoding and Nexys A7 constraints |
| [FM tuning interface](Tuner_FM_FPGA/) | Button-control state machine and working report |
| [Initial FPGA exercises](Tuner_FM_FPGA/src/tp0_prise_en_main_ise/) | VHDL, simulation testbenches, schematics and legacy constraints |
| [Display multiplexing](Tuner_FM_FPGA/src/tp1_affichage_multiplexe/) | Scan counter, multiplexing and digit decoding |
| [Tuner building blocks](Tuner_FM_FPGA/src/tp2_tuner_fm/) | BCD counting, initialisation control and draft state-machine logic |

## Engineering concepts

The exercises separate the stored numerical state from its visual representation. BCD counters feed digit decoders, while a scan controller selects the active display position. Button handling introduces initialisation, short-press actions and repeated actions after a delay.

The tuner represents frequencies from 87.5 to 108.0 MHz in 0.1 MHz steps. It implements an interface and digital control model; no RF receiver or analogue demodulator is provided.

## Tools and target compatibility

The archive mixes legacy Xilinx ISE schematics/UCF files with a Nexys A7-100T XDC file for an Artix-7 target. These artifacts do not form one interchangeable build project. The Artix-7 clock work requires a compatible Vivado project; legacy ISE artifacts require a suitable original target or migration.

Do not assume the presence of constraints alone establishes a complete synthesizable top-level design.

## Getting started

```bash
git clone https://github.com/tedjelmoulksn-dotcom/FPGA_VHDL.git
cd FPGA_VHDL
```

Start with each application README, identify its top-level entity and dependencies, then create a compatible toolchain project. Run available testbenches before synthesis and review clock domains, active-low signals and reset behaviour.

## Validation and integration

Verification follows the hierarchy of the design: truth tables for decoders, rollover sequences for counters, event traces for state machines and clock/enable timing for integration. These checks provide a precise basis for synthesis and board-level display tests.

Parts of the original top-level wiring and display control are missing. Draft files contain inconsistencies, including tuner limit wiring and divider values. The clock module also has documented hour-counter and scan-integration issues.

The source blocks and application reports provide the basis for this verification flow. Integrate the top-level wiring in the selected toolchain before progressing from behavioural checks to synthesis and timing analysis.

## Attribution and licence

Coursework sources and reports retain their original attribution. No project-wide licence has been defined.
