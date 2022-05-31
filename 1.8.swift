/******************************************************************************

Welcome to GDB Online.
GDB online is an online compiler and debugger tool for C, C++, Python, PHP, Ruby, 
C#, VB, Perl, Swift, Prolog, Javascript, Pascal, HTML, CSS, JS
Code, Compile, Run and Debug online from anywhere in world.

*******************************************************************************/
import Foundation

let n = Int(readLine()!)!
assert(n >= 0 && n <= 1000, "Out of range")
var tel = [String: String]()

for _ in 0..<n {
    let name = String(readLine()!)
    let number = String(readLine()!)
    tel[name] = number
}

for name in tel.keys {
    print(name)
    print(tel[name]!)
}