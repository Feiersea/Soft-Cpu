# 🧠 8-Bit Soft CPU

Welcome to the 8-bit soft CPU project! This is a simple yet expandable CPU core written in Verilog, designed to help you learn CPU architecture, digital logic, and FPGA design by building everything from scratch.

## 🔧 Overview

This CPU features:

- 8-bit data width
- Simple instruction set
- 4 or 8 general-purpose registers
- Basic ALU (add, sub, and, or, not, etc.)
- Separate instruction and data memory
- Support for branching, memory load/store, and basic arithmetic

Ideal for use in FPGA boards such as the **Arty S7-25** or **Altera DE2**.

---

## 📐 Architecture

| Component          | Description                                |
|-------------------|--------------------------------------------|
| Program Counter    | 8-bit, increments each cycle or jumps      |
| Instruction Memory | ROM containing user-defined machine code   |
| Data Memory        | RAM for runtime data                       |
| Register File      | 4–8 registers, each 8 bits wide            |
| ALU                | Supports ADD, SUB, AND, OR, NOT, etc.      |
| Control Unit       | FSM decoding instructions and control flow |

---

## 🧾 Instruction Set

| Mnemonic | Opcode | Description                       |
|----------|--------|-----------------------------------|
| NOP      | 0000   | No operation                      |
| LDI      | 0001   | Load immediate to register        |
| LOAD     | 0010   | Load from memory to register      |
| STORE    | 0011   | Store from register to memory     |
| ADD      | 0100   | Add two registers                 |
| SUB      | 0101   | Subtract two registers            |
| JMP      | 0110   | Unconditional jump                |
| JZ       | 0111   | Jump if zero flag is set          |
| AND      | 1000   | Bitwise AND                       |
| OR       | 1001   | Bitwise OR                        |
| NOT      | 1010   | Bitwise NOT                       |

---

## 🧪 Simulation

You can simulate the CPU using **ModelSim**, **Vivado**, or **Quartus II**.

### Example Testbench

```verilog
initial begin
  reset = 1;
  #10 reset = 0;
  // Run for some cycles
  #1000 $finish;
end
