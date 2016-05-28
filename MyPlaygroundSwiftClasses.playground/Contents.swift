//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

class Person {
    var firstName: String = ""
    var lastName: String = ""
    var age: Int = 0
    
    func input() -> String {
        let keyboard = NSFileHandle.fileHandleWithStandardInput()
        let inputData = keyboard.availableData
        let rawString = NSString(data: inputData, encoding: NSUTF8StringEncoding)
        if let string = rawString {
            return string.stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceAndNewlineCharacterSet())
        } else {
            return "Invalid input"
        }
    }
    
    func changeFirstName(newFirstName:String) {
        firstName = newFirstName
    }
    
    func enterInfo() {
        print("What is the first name?")
        firstName = input()
    }
    
    func printInfo() {
        print("First Name: \(firstName)")
    }
}

var newPerson = Person()

newPerson.firstName = "Ry"
newPerson.lastName = "Bristow"
newPerson.age = 18

