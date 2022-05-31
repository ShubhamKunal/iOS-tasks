/******************************************************************************

Welcome to GDB Online.
GDB online is an online compiler and debugger tool for C, C++, Python, PHP, Ruby, 
C#, VB, Perl, Swift, Prolog, Javascript, Pascal, HTML, CSS, JS
Code, Compile, Run and Debug online from anywhere in world.

*******************************************************************************/

import Foundation
print("count:", terminator: " ")
var numbers: [Int] = []
let n: Int = Int(readLine() ?? "") ?? 0
    
print("numbers:")
for _ in 1...n {
    numbers.append(Int(readLine() ?? "") ?? 0)
}
    
let sortedNumbers = numbers.sorted()
    
print()
    
for number in sortedNumbers {
    print(number)
}
    
print()
    
for number in numbers {
    print(number)
}