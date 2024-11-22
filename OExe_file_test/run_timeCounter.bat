@echo off

rem 获取当前批处理文件所在的目录
set current_dir=%~dp0

rem 切换到批处理文件所在的目录
cd /d %current_dir%

rem 執行timeCounter.cpp
g++ ./timeCounter.cpp -O3 -o timeCounter.exe
timeCounter.exe

pause