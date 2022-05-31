/******************************************************************************

Welcome to GDB Online.
GDB online is an online compiler and debugger tool for C, C++, Python, PHP, Ruby, 
C#, VB, Perl, Swift, Prolog, Javascript, Pascal, HTML, CSS, JS
Code, Compile, Run and Debug online from anywhere in world.

*******************************************************************************/
import Foundation
print("flag:", terminator: " ")
let f = readLine() ?? "l"
print("s:", terminator: " ")
let s = readLine() ?? ""
print()
print(f == "l" ? s.lowercased() : s.uppercased())