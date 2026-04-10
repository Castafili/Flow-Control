# GEMINI.md

## Project: Flow-Control (UniCan, Santander)

This project is a simulation of a reliable data transfer protocol (Stop-and-Wait) over an unreliable network link. It is implemented in C for a Networking course.

### Core Architecture
- **Protocol:** Stop-and-Wait ARQ (Alternating Bit).
- **Core Logic:** `eventCallbacks.c`.
- **Simulation Environment:** `library.c` / `library.h`.
- **Packet Definitions:** `global.h`.

### Build & Run
- Use `make` to compile the `flowcontrol` executable.
- The executable requires a Linux environment for timing functions (`-lrt`).
- Run with various flags (e.g., `-e` for errors, `-s` for synthetic traffic) to test the protocol.

### Testing Strategy
- **Manual Verification:** Use console input and observe sequence numbers/ACKs with the `-d` (debug) flag.
- **Automated Verification:** Use synthetic traffic (`-s`) and high error rates (`-e`) to check for data integrity and robustness.

### Context
- Developed for the "Networking" course at the University of Cantabria (UniCan), Santander.
- The student's task is primarily to modify `eventCallbacks.c`.
- Avoid modifying `library.c`, `library.h`, or `global.h` unless specifically requested by the student.
