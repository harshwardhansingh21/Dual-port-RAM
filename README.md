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
