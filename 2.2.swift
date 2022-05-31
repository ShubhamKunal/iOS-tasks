// DONE USING SWIFT PLAYGROUND
// Task 1
func mean(_ a: Float, _ b: Float) -> Float {
    return (a + b) / 2
}

print(mean(6.7, 9.8))

// Task 2 

func person(name: String = "Yury", age: Int = 21, city: String = "Moscow") {
    print("My name is \(name). I am \(age) years old and i am from \(city)")
}

person()
person(name: "Kunal")
person(name: "Kunal", age: 23, city: "Mumbai")

// Task 3 
func sayHi(_ name: String?) {
    if let name_ = name {
        print("Hello, \(name_)")    
    } else {
        print("Hello, friend!") 
    }
}

let name1: String = "Kunal"
let name2: String? = "Gary"
let name3: String? = nil

sayHi(name1)
sayHi(name2)
sayHi(name3)

// task 4
func modulo(_ a: Int?, _ b: Int? ) -> Int? {
    guard let a_ = a else {
        print("a is nil")
        return nil
    } 
    
    guard let b_ = b else {
        print("b is nil")
        return nil
    } 
    
    return (a_ % b_)
}

var a: Int = 15
var b: Int? = nil
var c = 7
var aModB = modulo(a, b)
print("\(a) % \(b) = ", aModB ?? "Math error!")
var bModA = modulo(b, a)
print("\(b) % \(a) = ", bModA ?? "Math error!")
var aModC = modulo(a, c)
print("\(a) % \(c) = ", aModC ?? "Math error!")
print(aModB , bModA, aModC)


// task 5
func inc(_ i: inout Int) {
    i += 1 
}

func dec(_ i: inout Int) {
    i -= 1 
}

var number = 16
inc(&number)
print(number)
dec(&number)
print(number)

// task 6
func someFunc(_ numbers: Int?...) -> (Int, Int, Int){
    var nillCount = 0
    var sum = 0
    for number in numbers {
        if let number_ = number {
            sum += number_
        } else {
            nillCount += 1
        }
    }
    return (numbers.count - nillCount, sum, nillCount)
}

print(someFunc(1, 2, 3))
print(someFunc(nil, nil, nil))
print(someFunc(1, 2, 3, nil, nil, 4))
