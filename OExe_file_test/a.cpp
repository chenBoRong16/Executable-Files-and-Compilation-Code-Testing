#include <iostream>
#include <vector>
using namespace std;

// 普通递归计算 Fibonacci 数列（函数1）
int fibonacciRecursive(int n) {
    if (n <= 1) return n;
    return fibonacciRecursive(n - 1) + fibonacciRecursive(n - 2);
}

// 动态规划优化计算 Fibonacci 数列（函数2）
int fibonacciDP(int n) {
    if (n <= 1) return n;

    vector<int> dp(n + 1);
    dp[0] = 0;
    dp[1] = 1;

    for (int i = 2; i <= n; ++i) {
        dp[i] = dp[i - 1] + dp[i - 2];
    }

    return dp[n];
}

int main() {
    int n = 40;  // 选择一个适中的 n 值用于对比测试

    // 使用普通递归计算 Fibonacci 数列
    cout << "Fibonacci number using recursion (n = " << n << "): " << fibonacciRecursive(n) << endl;

    // 使用动态规划计算 Fibonacci 数列
    cout << "Fibonacci number using dynamic programming (n = " << n << "): " << fibonacciDP(n) << endl;

    return 0;
}
