# UART Implementation using 8051 Microcontroller

This folder contains the implementation of **UART (Universal Asynchronous Receiver Transmitter)**
using the **8051 microcontroller** programmed in **Embedded C**.

The UART is configured using Timer 1 and operates in polling mode. The program
receives a character through the serial port and echoes the same character back,
verifying successful UART communication.

---

## UART Configuration

- Microcontroller: 8051  
- Crystal Frequency: 11.0592 MHz  
- UART Mode: Mode 1 (8-bit UART)  
- Baud Rate: 4800 bps  
- Parity: None  
- Stop Bits: 1  
- Communication Method: Polling  

---

## Registers Used

- `TMOD` – Timer 1 mode selection  
- `TH1` – Baud rate generation  
- `SCON` – Serial port configuration  
- `PCON` – SMOD control  
- `SBUF` – Serial data buffer  
- `TI` – Transmit interrupt flag  
- `RI` – Receive interrupt flag  

---

## Program Files

- `uart_8051.c` – Complete UART implementation including:
  - UART initialization
  - Character transmission
  - Character reception
  - Echo functionality

---

## Working Principle

1. UART is initialized using Timer 1 in auto-reload mode.
2. Any initial garbage data is discarded during startup.
3. The microcontroller waits for a valid character to be received.
4. Once received, the character is transmitted back through UART.
5. The process repeats continuously.

---

## Result

UART communication was successfully verified at **4800 baud rate**.  
Characters sent to the microcontroller were correctly received and echoed back,
confirming reliable serial communication.

---

## Notes

- The UART implementation uses polling (no interrupts).
- This implementation was verified independently from the Verilog UART design.

