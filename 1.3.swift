/**
Welcome to GDB Online.
GDB online is an online compiler and debugger tool for C, C++, Python, Java, PHP, Ruby, Perl,
C#, VB, Swift, Pascal, Fortran, Haskell, Objective-C, Assembly, HTML, CSS, JS, SQLite, Prolog.
Code, Compile, Run and Debug online from anywhere in world.
*/
import Foundation

print("Enter count:", terminator: " ")
    let n: Int = Int(readLine() ?? "") ?? 0
    
    print()
    
    func printFibonacci(curr: UInt, next: UInt, n: Int) {
        if (n == 0) {
            return
        }
        
        print(curr)
        printFibonacci(curr: next, next: curr + next, n: n - 1)
    }
    
    printFibonacci(curr: 0, next: 1, n: n)


fibonacciRecursiveNum1(num1: 0, num2: 1, steps: n - 1)