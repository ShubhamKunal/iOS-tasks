/**
Welcome to GDB Online.
GDB online is an online compiler and debugger tool for C, C++, Python, Java, PHP, Ruby, Perl,
C#, VB, Swift, Pascal, Fortran, Haskell, Objective-C, Assembly, HTML, CSS, JS, SQLite, Prolog.
Code, Compile, Run and Debug online from anywhere in world.
*/
import Foundation

let x = Decimal(Double(readLine()!)!)
let y = Decimal(Double(readLine()!)!)
let z = Decimal(Double(readLine()!)!)


if (x + y) == z {
    print("=")
} else if (x + y) > z {
    print(">")
} else {
    print("<")
}