//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground, Hello"
2+2
123*456

var variableName: String = "Hello World!"
var age: Int = 18
var number: Int = 1
var decimal: Double = 2.3
var booleanValue: Bool = true
var name: String = "Hello"

let life: Int = 42
let pi: Double = 3.14
let canTouchThis: Bool = false
let captain: String = "Kirk"

let favoriteNumber: Int = 42

print("Hello, World")

var apples = 5
print("Sally has \(apples) apples")

print("Sally has \(apples - 5) apples")

var johnGrade: Int = 95
var samGrade: Int = 85
if (johnGrade < samGrade) {
    print("John less than Sam")
} else if (samGrade < johnGrade) {
    print("Sam grade less than John")
} else {
    print("All Equal")
}

var secondsLeft = 3
while (secondsLeft > 0) {
    print(secondsLeft)
    secondsLeft = secondsLeft - 1
}
print("Blast off!")

var cokesLeft = 7
var fantasLeft = 4
while(cokesLeft > 0)  {
    print("You have \(cokesLeft) Cokes left.")
    cokesLeft = cokesLeft - 1
    if(cokesLeft <= fantasLeft)  {
        break
    }
}
print("You stop drinking Cokes.")


var numbers = 0
while(numbers <= 10)  {
    if(numbers == 9)  {
        numbers = numbers + 1
        continue
    }
    print(numbers)
    numbers = numbers + 1
}


var optionalNumber: Int? = 5
optionalNumber = nil
if let number = optionalNumber {
    print("It is a number")
} else {
    print("It is not a number")
}


var testConversionString: String = "3"
var testConversion: Int? = Int(testConversionString)
if let number = testConversion {
    print("It is a numger")
} else {
    print("It is not a number")
}
