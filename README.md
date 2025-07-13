# Sequence-Detector-2
# 🔄 Sequence Detector (1011) – Mealy FSM (Verilog)

## 🎯 Objective
To design a **Mealy Finite State Machine** (FSM) that detects the binary sequence **"1011"** in a serial input stream and outputs high (`z = 1`) immediately when the sequence is completed.

---

## 📜 Description
This Verilog-based project detects the **1011** pattern using a **4-state Mealy FSM**, where the **output depends on both the current state and input**.  
The FSM transitions through defined states based on input `x`, and asserts output `z = 1` when the complete sequence is identified.

---

## ⚙️ Working Principle

### 🔁 State Transition:
- **S0** → Initial State  
- **S1** → Seen ‘1’  
- **S2** → Seen ‘10’  
- **S3** → Seen ‘101’  
- If `x == 1` in S3 → Output `z = 1` (Sequence "1011" detected)

### 💡 Mealy Machine Characteristics:
- Output changes with input (faster detection)
- Uses fewer states than Moore
- Output is generated in state S3 if `x == 1`

---

## 🧠 Skills Demonstrated
- Mealy FSM Design (state + input based output)
- Verilog RTL Coding
- Clocked FSM Behavior
- Simulation Testbench Writing

---

## 🔧 Tools Used
- **ModelSim** (Simulation & Waveform Verification)
- **Verilog HDL** (RTL Design)
- **GitHub** (Version Control)
- **GVim (Coding Environment)

---

## 📈 Outcome
- Successfully detected `1011` sequence
- Verified simulation output using waveform
- Gained confidence in FSM design & Mealy model implementation

---

## 📂 Files Included
- `seq_1011_detector.v` – FSM Verilog code (Mealy machine)
- `seq_1011_detector_tb.v` – Testbench for input sequence
- `waveform.png` – Screenshot of simulation waveform


