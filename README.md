# 4-bit Binary Coded Hexadecimal to 7-Segment Display Decoder  

## Project Overview  
This project implements a 4-bit Binary Coded Hexadecimal to 7-Segment Display Decoder using Verilog HDL on a Spartan-7 FPGA.  

The design converts 4-bit binary input from switches into corresponding hexadecimal digits (0–F) and displays them on a 7-segment display.  

The system supports real-time interaction and demonstrates FPGA-based digital logic implementation.  

---

## Why this Project is Important  

Without decoder:  

- Binary values are not human-readable  
- Difficult to visualize digital outputs  

This decoder solves the problem by converting binary input into a human-readable 7-segment display format.  

---

## Features  

- 4-bit Binary Input  
- Hexadecimal Output (0–F)  
- 7-Segment Display Interface  
- Enable Button Control  
- Real-Time Hardware Output  
- Modular Verilog Design  

---

## System Architecture  

Modules used:  

- top.v → top integration  
- binary_to_onehot.v → binary to one-hot conversion  
- onehot_to_7seg.v → 7-segment decoding  
- top_tb.v → testbench  

Architecture:  

Binary Input → One-Hot Conversion → 7-Segment Decoder → Display  

Control logic handles:  

- input decoding  
- segment mapping  
- display control  

---

## Verification Architecture  

Verification components:  

- Testbench  
- Stimulus generation  
- Output monitoring  

Flow:  

Testbench → DUT → Output Observation  

Testbench verifies all possible input combinations (0–15).  

---

## Simulation Results  

Verified scenarios:  

- All binary inputs (0000 to 1111)  
- Correct hexadecimal mapping  
- Enable/Disable behavior  

Waveforms confirm correct 7-segment output for each input.  

---

## Synthesis Results  

Tool: Xilinx Vivado  

Results:  

- LUT Usage: Low  
- Register Usage: Low  
- Timing Violations: None  
- Efficient FPGA implementation  

---

## Tools Used  

- Verilog HDL  
- Xilinx Vivado  
- Vivado Simulator  

---

## Folder Structure  
4-bit_BCD_Project/
│── rtl/
│ ├── top.v
│ ├── binary_to_onehot.v
│ ├── onehot_to_7seg.v
│
│── tb/
│ ├── top_tb.v
│
│── constraints/
│ ├── constraints.xdc
│
│── docs/
│ ├── project_report.pdf
│
│── README.md

---

## Future Scope  

- Multi-digit 7-segment display  
- BCD counter integration  
- FPGA-based calculator  
- Display multiplexing  

---

## Author  

Mohammad Rehan  
B.Tech ECE NIT Mizoram  
