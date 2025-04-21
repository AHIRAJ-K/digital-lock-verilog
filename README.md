# 🔐 [Digital Lock System (Verilog)](https://ahiraj-k.github.io/digital-lock-verilog/Project-Report.pdf)

A 4‑bit Digital Lock System implemented using Verilog and simulated in a Vivado environment.

## 📚 Overview

The system compares a 4‑bit input key with a preset 4‑bit password.  
- If the inputs match, it triggers an `unlock` signal.  
- If they do not match, an `alarm` is triggered.  
Includes a reset signal to clear outputs and a testbench for functional verification.

---

## 🧠 System Description

### 📥 Input Signals
- `clk`                 — Clock input  
- `reset`               — Active‑high reset signal  
- `key_input[3:0]`      — 4‑bit user‑entered password  
- `preset_password[3:0]`— 4‑bit preset password  

### 📤 Output Signals
- `unlock` — High when password is correct  
- `alarm`  — High when password is incorrect  

---

## 🔄 Reset Mechanism

When `reset` is asserted, all outputs (`unlock` and `alarm`) are reset to `0`.

---

## 🧪 Testbench

A Verilog testbench simulates various input scenarios to validate correct vs. incorrect password handling and reset behavior.

---

## 🛠 Tools Used

- **HDL:** Verilog  
- **Simulator:** Vivado  

---

## 📄 Project Report

[Download the full project report (PDF)](https://ahiraj-k.github.io/digital-lock-verilog/Project-Report.pdf)

---

## 🔖 Tags

`verilog` `digital-lock` `vivado` `fpga` `testbench` `hdl`

---

## 🚀 Contributors

- [Ahiraj K](https://www.linkedin.com/in/ahiraj-k)

