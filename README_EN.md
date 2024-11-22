# Executable Files and Compilation Code Testing

## Overview
This project involves several batch files and C++ programs to automate and measure the compilation and execution of different versions of a sample C++ code (`a.cpp`). The main goal is to test compilation optimization and to compare the execution times of the generated executables.

The project includes:
1. **Batch files** for automating compilation and execution tasks.
2. **C++ code** for measuring execution time and managing operations.

## Files in the Project

- **`timeCounter.cpp`**: This C++ program is responsible for executing each version of the compiled executable (`a.exe`, `aO2.exe`, `aO3.exe`, `aOfast.exe`) and measuring the time taken to run them. The execution times are then printed to the console.

- **`compile_a_files.bat`**: This batch file compiles `a.cpp` into multiple executables (`a.exe`, `aO2.exe`, `aO3.exe`, `aOfast.exe`) using different optimization levels.

- **`run_timeCounter.bat`**: This batch file compiles and runs `timeCounter.cpp`, generating `timeCounter.exe`, which then measures the execution times of all the executables.

- **`run_aO3.bat`**: A batch script specifically used to run the `aO3.exe` executable.

- **`a.cpp`**: The sample C++ code used in this project, which is compiled into different executable files to test the impact of different compiler optimization levels.

- **`timeCounter.exe`**: The compiled version of `timeCounter.cpp`, used to measure execution times.

## Flowchart
A flowchart (`可執行檔、匯編代碼測試.drawio.pdf`) is included to visually represent the relationships between different batch files, source code, and executables. It shows how each component interacts within the overall workflow.

## How to Use

1. **Compilation and Execution**:
    - Run `compile_a_files.bat` to compile `a.cpp` into several versions of executables with different optimizations.
    - Use `run_timeCounter.bat` to compile `timeCounter.cpp` and execute `timeCounter.exe`. This will time the execution of each compiled version.

2. **Customization**:
    - Modify `a.cpp` to make changes to the C++ code being tested.
    - Adjust the batch files to include additional compilation flags or executables if required.

## Dependencies
- **Windows OS** (as it uses Windows batch scripts and Windows-specific APIs in `timeCounter.cpp`).
- **C++ Compiler** (such as MinGW or MSVC) to compile the C++ files.

## How it Works
- `timeCounter.cpp` uses `system()` calls to run each executable (`a.exe`, `aO2.exe`, `aO3.exe`, `aOfast.exe`) and measures the time taken using `chrono`.
- Batch files are used to simplify the process of compiling and running different tasks.
- Execution logs and time measurements are managed through the `storage` folder.

## Future Improvements
- **Cross-Platform Compatibility**: Modify the C++ code and scripts to work across Linux and macOS.
- **Improved Time Logging**: Store execution times in a text file for better record-keeping and analysis.
- **GUI Tool**: Develop a simple GUI to run and visualize the tests.

## Author
**Bo Rong, Cheng**
