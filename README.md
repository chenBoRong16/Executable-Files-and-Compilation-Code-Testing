# 可執行檔與匯編代碼測試

## 概述

本專案包含多個批次檔和 C++ 程序，用於自動化並測量不同版本的示例 C++ 代碼（`a.cpp`）的編譯和執行。主要目標是測試編譯優化並比較生成的可執行文件的執行時間。

該專案包含：

1. **批次檔** 用於自動化編譯和執行任務。
2. **C++ 程序** 用於測量執行時間和管理操作。

## 專案中的文件

- **`timeCounter.cpp`**：這個 C++ 程序負責執行每個版本的已編譯可執行檔（`a.exe`、`aO2.exe`、`aO3.exe`、`aOfast.exe`），並測量它們的執行時間，結果會顯示在控制台中。

- **`compile_a_files.bat`**：此批次檔用於將 `a.cpp` 編譯為多個版本的可執行檔（`a.exe`、`aO2.exe`、`aO3.exe`、`aOfast.exe`），每個版本使用不同的優化等級。

- **`run_timeCounter.bat`**：此批次檔用於編譯並運行 `timeCounter.cpp`，生成 `timeCounter.exe`，然後測量所有可執行檔的執行時間。

- **`run_aO3.bat`**：專門用於運行 `aO3.exe` 的批次腳本。

- **`a.cpp`**：該專案中使用的示例 C++ 代碼，會被編譯為不同版本的可執行檔，以測試不同編譯器優化級別的影響。

- **`timeCounter.exe`**：`timeCounter.cpp` 的已編譯版本，用於測量可執行檔的執行時間。

## 流程圖

專案中包含一個流程圖（`可執行檔、匯編代碼測試.drawio.pdf`），用於直觀地表示不同批次檔、源代碼和可執行檔之間的關係。該流程圖顯示了各個組件在整體工作流程中的互動方式。

## 使用方法

1. **編譯與執行**：

   - 運行 `compile_a_files.bat` 將 `a.cpp` 編譯為多個優化版本的可執行檔。
   - 使用 `run_timeCounter.bat` 編譯 `timeCounter.cpp` 並執行 `timeCounter.exe`，這將對每個編譯版本的執行時間進行測量。

2. **自定義**：

   - 修改 `a.cpp` 以對被測試的 C++ 代碼進行更改。
   - 調整批次檔以包括其他編譯標誌或可執行檔（如有需要）。

## 依賴項目

- **Windows 作業系統**（因為使用了 Windows 批次腳本和 `timeCounter.cpp` 中 Windows 專用的 API）。
- **C++ 編譯器**（例如 MinGW 或 MSVC）用於編譯 C++ 文件。

## 工作原理

- `timeCounter.cpp` 使用 `system()` 函數來運行每個可執行檔（`a.exe`、`aO2.exe`、`aO3.exe`、`aOfast.exe`），並使用 `chrono` 測量所需時間。
- 批次檔簡化了編譯和運行不同任務的過程。
- 執行日誌和時間測量結果保存在 `storage` 文件夾中。

## 作者

**Bo Rong, Cheng**

歡迎對此專案提出改進建議或貢獻。這主要是一個學習項目，用於理解編譯和執行性能之間的差異。

## 授權

此專案使用 MIT 授權許可證。



Feel free to contribute or suggest any improvements to this project. This is primarily a learning experience to understand compilation and execution performance differences.

## License
This project is licensed under the MIT License.
