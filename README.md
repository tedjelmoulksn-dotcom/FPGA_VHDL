# FPGA and VHDL Laboratories

Digital-design studies in counters, multiplexed seven-segment displays, clock division and finite-state control. The collection includes an FM tuning interface and a digital clock.

## Repository guide

| Location | Contents |
|---|---|
| [Tuner_FM_FPGA/](Tuner_FM_FPGA/) | Organised tuner sources, report and diagrams |
| [Horloge_numerique_FPGA/](Horloge_numerique_FPGA/) | HH:MM:SS clock blocks and Nexys constraints |
| [archive/](archive/) | Original ISE project files, schematics and test benches |

## Getting started

Use Xilinx ISE for the original `.xise` and `.ucf` projects. The digital-clock folder uses `.xdc` constraints for Vivado. Choose the matching project and verify its target device and clock before synthesis.

## Project context

Curated source folders and original project layouts are kept separate. Some clock integration blocks are missing; the original tuner import adds schematics absent from the earlier curated folder.
