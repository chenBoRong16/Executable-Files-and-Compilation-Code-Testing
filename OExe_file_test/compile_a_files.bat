@echo off

rem 获取当前批处理文件所在的目录
set current_dir=%~dp0

rem 切换到批处理文件所在的目录
cd /d %current_dir%

rem 创建 storage 目录（如果不存在）
if not exist storage (
    mkdir storage
)

g++ -S ./a.cpp -o ./storage/a.asm
g++ -S -O2 ./a.cpp -o ./storage/aO2.asm
g++ -S -O3 ./a.cpp -o ./storage/aO3.asm
g++ -S -Ofast ./a.cpp -o ./storage/aOFast.asm

::用g++編譯檔案: -o和生成文件名稱相臨

g++ ./a.cpp -o ./storage/a.exe
g++ ./a.cpp -O2 -o ./storage/aO2.exe
g++ ./a.cpp -O3 -o ./storage/aO3.exe
g++ ./a.cpp -Ofast -o ./storage/aOfast.exe

pause

:: 以下為偽注釋:
if false(
    g++ -S a.cpp: 可產生.s代碼，告诉编译器停止在生成汇编代码的阶段(無優化)
    g++ -S ./a.cpp -o a.asm: 無優化
    g++ -S -O3 ./a.cpp -o a3.asm: 開啟優化，o代表optimization
    g++ -S -Ofast ./a.cpp -o aFast.asm: 最優化，可能会牺牲标准兼容性和浮点数计算的精度
    在 Unix/Linux 环境下，.s 扩展名被广泛采用，这在 Unix 系统的传统中比较常见
    在 Windows 环境中，.asm 扩展名则更为流行和标准化，因为它更直观地表示“汇编”。
)

if false(
    1. 預處理(Preprocessing): 
        命令: gcc -E a.c -o a.i
        過程: .c/.cpp -> .i
        操作: 處理#include(頭文件被插入)、#define(被展開)。

    2. 編譯(compilation):
        命令: gcc -S a.i -o a.s
        命令: gcc -S a.c -o a.s
        過程: .i -> .s(匯編代碼文件)
        操作: 将预处理后的 C/C++ 源代码转换为汇编代码。
            此階段生成的.s檔為針對"特定平台" 的匯編指令

    3. 匯編(assembly):
        命令: gcc -c a.s -o a.o
        命令: gcc -c a.c -o a.o
        查看內容: 用objdump、nm工具來查看內容: objdump -d a.o
        過程: .s -> .o
        操作: 將匯編代碼轉為機器代碼，這個機器代碼和目標平台相關
            .o檔為不可執行的中間文件

    4. 鏈接(linking):
        命令: gcc a.o -o a.exe
        命令: gcc a.c -o a.exe
        過程: .o -> .exe
        操作: 將一個或多個目標文件所需的"庫"(如: 標準庫libc)鏈接在一起，生成最終的可執行程序。
            鏈接器匯解決所有符號引用(如: 函數調用和全局變量)，並合併為一可執行文件。

    1. 優化(Optimization):
        -O0:无优化(默认)，适合调试。
        -O1、-O2、-O3:逐步增强的优化等级，-O3 是激进的优化。
        -Ofast:更激进的优化，可能不符合标准。
        -flto:链接时优化，可跨文件进行全局优化。
    
    對於.cpp: 自行將gcc改為g++
)