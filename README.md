# 🧠 Dual Port RAM (Synchronous) – Verilog HDL

## 📌 Overview
This project implements a **synchronous dual-port RAM** using Verilog HDL. The design allows **two independent ports (Port A and Port B)** to access the same memory block using a common clock. Each port can perform read or write operations.

The module also includes **reset logic** and **basic write-collision handling** when both ports attempt to write to the same address simultaneously.

---

## ⚙️ Features
- ✅ 16 × 8-bit memory (16 locations, 8-bit wide)  
- ✅ True dual-port architecture  
- ✅ Independent read/write control for each port  
- ✅ Synchronous operation  
- ✅ Reset initializes memory and outputs  
- ✅ Write-write conflict protection  
- ✅ Synthesizable RTL design  

---

## 🏗️ Module Specifications
- **Memory Depth:** 16  
- **Data Width:** 8 bits  
- **Address Width:** 4 bits  
- **Clock:** Common clock for both ports  
- **Reset:** Active-high synchronous reset  

---

## 🔌 Port Description

### Port A
- `we_a` – Write enable  
- `din_a` – Data input  
- `addr_a` – Address input  
- `dout_a` – Data output  

Port A also performs full memory initialization during reset.

---

### Port B
- `we_b` – Write enable  
- `din_b` – Data input  
- `addr_b` – Address input  
- `dout_b` – Data output  

If both ports attempt to write to the **same address at the same clock edge**, Port B write is blocked to prevent memory collision.

---

## 🔁 Functional Behavior
- On reset:  
  - All memory locations are cleared  
  - Outputs are driven to zero  

- On write enable:  
  - Data is written to the specified address  

- On read operation:  
  - Data from the addressed memory location is available at the output  

---

## 🧪 Verification
This design can be verified using a custom testbench to validate:
- Independent port operations  
- Simultaneous read/write  
- Write-write collision cases  
- Reset functionality  

(You can add waveform screenshots and testbench files here.)

---

## 📂 Project Structure

