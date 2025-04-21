# 🔐 Digital Lock System (Verilog)

A 4-bit Digital Lock System implemented using Verilog and simulated in a Vivado environment.

## 📚 Overview

The system compares a 4-bit input key with a preset 4-bit password. If the inputs match, it triggers an `unlock` signal. If they do not match, an `alarm` is triggered. Includes a reset signal to reset all outputs and a testbench for simulation.

---

## 🧠 System Description

### 📥 Input Signals
- `clk`: Clock input
- `reset`: Active-high reset signal
- `key_input[3:0]`: 4-bit user-entered password
- `preset_password[3:0]`: 4-bit preset password

### 📤 Output Signals
- `unlock`: Goes high when password is correct
- `alarm`: Goes high when password is incorrect

---

## 📊 Block Diagram

nginx
Copy
Edit
   key_input
       ↓
┌────────────────────┐ │ │ │ Digital Lock │ │ System │ │ │ └────────────────────┘ ↓ ↓ alarm unlock

yaml
Copy
Edit

---

## 🔄 Reset Mechanism

When `reset` is active-high, all outputs (`unlock` and `alarm`) are reset to `0`.

---

## 🧪 Testbench

A Verilog testbench simulates different input scenarios to validate the functionality of the digital lock system. It verifies both correct and incorrect password attempts and reset behavior.

---

## 🛠 Tools Used
- Verilog HDL
- Vivado Simulator

---

## 📂 File Structure

digital-lock-verilog/ │ ├── lock_system.v # Verilog module for the lock ├── testbench.v # Testbench for simulation ├── README.md # This file ├── lock_waveform.vcd # Optional: simulation waveform output

yaml
Copy
Edit

---

## 🔖 Tags

`verilog` `digital-lock` `vivado` `fpga` `testbench` `hdl`

---

## 📸 Project Thumbnail

![Project Thumbnail](./thumbnail.png) <!-- Replace with actual image path if you upload the one I generated -->

---

## 📫 Contact

Made by [Ahiraj K](https://www.linkedin.com/in/ahiraj-k)  
📧 ahiraj.me@gmail.com  
📍 Calicut, Kerala, India

Want me to generate the code files (lock_system.v, testbench.v) based on the report too?




You said:
so i need the entire readme in a single markdown so i can just copy and paste the entire readme


ChatGPT said:
markdown
Copy
Edit
# 🔐 Digital Lock System (Verilog)

A 4-bit Digital Lock System implemented using Verilog and simulated in a Vivado environment.

## 📚 Overview

The system compares a 4-bit input key with a preset 4-bit password. If the inputs match, it triggers an `unlock` signal. If they do not match, an `alarm` is triggered. Includes a reset signal to reset all outputs and a testbench for simulation.

---

## 🧠 System Description

### 📥 Input Signals
- `clk`: Clock input  
- `reset`: Active-high reset signal  
- `key_input[3:0]`: 4-bit user-entered password  
- `preset_password[3:0]`: 4-bit preset password  

### 📤 Output Signals
- `unlock`: Goes high when password is correct  
- `alarm`: Goes high when password is incorrect  

---

## 📊 Block Diagram

nginx
Copy
Edit
   key_input
       ↓
┌────────────────────┐ │ │ │ Digital Lock │ │ System │ │ │ └────────────────────┘ ↓ ↓ alarm unlock

yaml
Copy
Edit

---

## 🔄 Reset Mechanism

When `reset` is active-high, all outputs (`unlock` and `alarm`) are reset to `0`.

---

## 🧪 Testbench

A Verilog testbench simulates different input scenarios to validate the functionality of the digital lock system. It verifies both correct and incorrect password attempts and reset behavior.

---

## 🛠 Tools Used

- Verilog HDL  
- Vivado Simulator  

---

## 📂 File Structure

digital-lock-verilog/ │ ├── lock_system.v # Verilog module for the lock ├── testbench.v # Testbench for simulation ├── README.md # This file └── lock_waveform.vcd # Optional: simulation waveform output

yaml
Copy
Edit

---

## 🔖 Tags

`verilog` `digital-lock` `vivado` `fpga` `testbench` `hdl`

---

## 📸 Project Thumbnail

![Project Thumbnail](./thumbnail.png) <!-- Replace with actual image path if you upload the one I generated -->

---

## 📫 Contact

Made by [Ahiraj K](https://www.linkedin.com/in/ahiraj-k)  
📧 ahiraj.me@gmail.com  
📍 Calicut, Kerala, India
