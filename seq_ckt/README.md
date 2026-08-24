# Sequential Circuits & Shift Registers using Verilog HDL

A collection of sequential circuit designs implemented in **Verilog HDL** and verified through simulation using **Xilinx Vivado**.

## 📌 Project Overview

This project contains RTL implementations and dedicated testbenches for:

### Latches
* SR Latch
* D Latch
* JK Latch
* T Latch

### Flip-Flops
* SR Flip-Flop
* D Flip-Flop
* JK Flip-Flop
* T Flip-Flop

### Registers
* SISO Shift Register
* SIPO Shift Register
* PISO Shift Register
* PIPO Shift Register
* Universal Shift Register (USR)

Each module is accompanied by a testbench for functional verification and waveform analysis.

---


## 📁 Project Structure

```text
Sequential_circuit_latches_verilog_HDL/
│
├── Latch/
│   ├── D_Latch/
│   │   ├── D_latch.v
│   │   └── tb_D_latch.v
│   │
│   ├── JK_LATCH/
│   │   ├── JK_latch.v
│   │   └── tb_JK_latch.v
│   │
│   ├── SR_Latch/
│   │   ├── sr_latch.v
│   │   └── tb_sr_latch.v
│   │
│   └── T_Latch/
│       ├── T_latch.v
│       └── tb_T_latch.v
│
├── flipflop/
│   ├── D_ff/
│   │   ├── D_ff.v
│   │   └── tb_D_ff.v
│   │
│   ├── jk_ff/
│   │   ├── jk_ff.v
│   │   └── tb_jk_ff.v
│   │
│   ├── sr_ff/
│   │   ├── sr_ff.v
│   │   └── tb_sr_ff.v
│   │
│   └── t_ff/
│       ├── t_ff.v
│       └── tb_t_ff.v
│
├── Register/
│   ├── SISO/
│   │   ├── siso.v
│   │   └── tb_siso.v
│   │
│   ├── SIPO/
│   │   ├── SIPO.v
│   │   └── tb_SIPO.v
│   │
│   ├── PISO/
│   │   ├── PISO.v
│   │   └── tb_PISO.v
│   │
│   ├── PIPO/
│   │   ├── PIPO.v
│   │   └── tb_PIPO.v
│   │
│   └── USR/
│       ├── USR.v
│       └── tb_USR.v
│
├── .gitignore
└── README.md
```

## 🔹 Implemented Modules

### Latches

| Module       | Description                                                  |
| ------------ | ------------------------------------------------------------ |
| **SR Latch** | Basic set-reset latch implemented using Verilog HDL.         |
| **D Latch**  | Data latch with enable-based operation.                      |
| **JK Latch** | JK latch supporting set, reset, hold, and toggle operations. |
| **T Latch**  | Toggle latch implemented using Verilog RTL.                  |

### Flip-Flops

| Module           | Description                                                       |
| ---------------- | ----------------------------------------------------------------- |
| **SR Flip-Flop** | Clock-controlled set-reset flip-flop with reset functionality.   |
| **D Flip-Flop**  | Data flip-flop implementing `Q(n+1) = D`.                        |
| **JK Flip-Flop** | JK flip-flop supporting hold, set, reset, and toggle operations. |
| **T Flip-Flop**  | Toggle flip-flop that changes state on the active clock edge.    |

### Shift Registers

| Module   | Description                                                   |
| -------- | ------------------------------------------------------------- |
| **SISO** | Serial data input and serial data output implementation.      |
| **SIPO** | Serial data input with parallel data output.                  |
| **PISO** | Parallel data loading followed by serial data output.         |
| **PIPO** | Parallel data loading and parallel data output.               |
| **USR**  | Universal Shift Register supporting multiple operating modes. |

---

## 🧪 Verification

Every RTL module includes a dedicated **testbench** for functional verification.

Verification includes:

* Input stimulus generation
* Clock generation
* Reset and control signal testing
* Output verification
* Simulation waveform analysis

All modules are simulated using **Xilinx Vivado**.

---

## 🛠️ Tools & Technologies

* **Verilog HDL**
* **Xilinx Vivado**
* **RTL Design**
* **Digital Logic Design**
* **Functional Simulation**
* **Waveform Analysis**

---

## 📚 Concepts Practiced

* Verilog RTL coding
* Sequential circuit design
* Clocked logic
* Reset and enable signals
* Shift operations
* Serial and parallel data handling
* Testbench development
* Functional verification
* Simulation debugging

---

## 🚀 Future Work

* Counters
* Ring & Johnson Counters
* Finite State Machines (FSMs)
* Clock Dividers
* UART
* FIFO
* Memory RTL
* Advanced RTL Design & Verification

---

## 👩‍💻 Author

**Chhavi Verma**

B.Tech — Electronics Engineering

---

⭐ This repository documents my hands-on practice with **Verilog HDL, RTL Design, Sequential Circuits, and Functional Verification**.
