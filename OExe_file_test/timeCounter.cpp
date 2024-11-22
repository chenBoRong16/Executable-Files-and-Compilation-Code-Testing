#define UNICODE
#include <iostream>
#include <chrono>
#include <vector>
#include <windows.h>
using namespace std;

void programOperation(const string& input){
    /* system():  
        返回值：
        - 0：命令成功执行
        - -1：无法创建子进程或无法执行 shell
        - 其他数值：由外部程序的退出状态码决定
    */
    int return_code = system(input.c_str()); //linux、unit: system(".\a.exe")

    /*  
        Linux/Unix 系统：
        - 可以用 WIFEXITED(return_code) 判断外部命令是否正常退出，再用 WEXITSTATUS(return_code) 获取退出状态码。
        - 可以用 WIFSIGNALED(return_code) 判断子进程是否被信号中止，再用 WTERMSIG(return_code) 获取信号编号。
        Windows 系统：
        - 没有 POSIX 的分解宏，直接返回 Shell 的退出状态码或外部程序的退出码。
    */
    if (return_code == -1) {
        cerr << "Error: Failed to create child process or execute shell when running command: " << input << endl;
    } else if (return_code == 0) {
        cout << "Command executed successfully: " << input << endl;
    } else {
        cerr << "Command failed with exit status: " << return_code << " for command: " << input << endl;
    }

    return;
}

void countDown(const string& input){ // 用常量參考減少複製成本
    auto startT = chrono::high_resolution_clock::now();

    programOperation(input);

    auto endT = chrono::high_resolution_clock::now();

    chrono::duration<double, milli> elapsedTime = endT - startT;
    cout << "Execution time: " << elapsedTime.count() << " ms" << endl;
    return;
}

wstring directLog() {
    // 获取当前可执行文件的完整路径
    wchar_t fullPath[MAX_PATH];
    if (GetModuleFileName(NULL, fullPath, MAX_PATH) == 0) {
        cerr << "Error: Could not get the path of the executable." << endl;
        return L"";  // 返回空字符串表示失败
    }

    // 将路径转换为目录路径（移除文件名部分）
    wchar_t* lastBackslash = wcsrchr(fullPath, L'\\');
    if (lastBackslash != nullptr) {
        *lastBackslash = L'\0';  // 终止路径，使其成为仅包含目录的路径
    }

    // 将 "storage" 追加到目录路径
    wstring storagePath = fullPath;
    storagePath += L"\\storage";

    return storagePath;  // 返回 wstring，调用者可以安全使用
}

int main(){
    
    // 获取 storage 的完整路径
    wstring logPath = directLog();
    if (logPath.empty()) {
        cerr << "Error: Could not determine the storage directory." << endl;
        return 1;
    }

    // 设置当前工作目录为 storage 目录
    if (!SetCurrentDirectory(logPath.c_str())) {
        wcerr << L"Error: Could not change directory to specified path: " << logPath << endl;
        return 1;
    }

    vector<string> cmdList = {
        "a.exe", 
        "aO2.exe",
        "aO3.exe",
        "aOfast.exe"
    };

    //可用範圍循環(Ranged-based for loop): const string& a : cmdList， 而非迭代器
    // ++it比it++更快

    for (auto it = cmdList.begin(); it != cmdList.end(); ++it){ // string.size(): 回傳字串長度; vector.size(): 回傳vector大小
        countDown(*it);
        cout << endl;
    }

    system("pause");
    return 0;
}
