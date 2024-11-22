@echo off

rem 获取当前批处理文件所在的目录
set current_dir=%~dp0

rem 切换到批处理文件所在的目录
cd /d %current_dir%

rem 创建 storage 目录（如果不存在）
if not exist storage (
    mkdir storage
)

storage\aO3.exe

pause