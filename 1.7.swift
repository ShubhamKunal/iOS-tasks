/******************************************************************************

Welcome to GDB Online.
GDB online is an online compiler and debugger tool for C, C++, Python, PHP, Ruby, 
C#, VB, Perl, Swift, Prolog, Javascript, Pascal, HTML, CSS, JS
Code, Compile, Run and Debug online from anywhere in world.

*******************************************************************************/
import Foundation
var invitedStudents: Set<String> = []
var cameStudents: Set<String> = []
print("came:", terminator: " ")
let nCame: Int = Int(readLine() ?? "") ?? 0
for _ in 1...nCame {
     cameStudents.insert(readLine() ?? "")
}

print()
print("invited:", terminator: " ")
let nInvited: Int = Int(readLine() ?? "") ?? 0
for _ in 1...nInvited {
    invitedStudents.insert(readLine() ?? "")
}
print()
print("expulsion:")
invitedStudents.subtract(cameStudents)
for students in invitedStudents {
    print(students)
}