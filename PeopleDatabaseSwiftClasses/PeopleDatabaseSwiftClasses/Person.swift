//
//  Person.swift
//  PeopleDatabaseSwiftClasses
//
//  Created by Peter Pan on 5/27/16.
//
//

import Foundation

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
    
    func changeFirstName(newFirstName: String) {
        firstName = newFirstName
    }
    
    func enterInfo() {
        print("What is the first name?")
        firstName = input()
        print("What is the last name?")
        lastName = input()
        print("What is the age?")
        let tempAge: Int? = Int(input())
        if let number = tempAge {
            age = number
        }
    }
    
    func printInfo() {
        print("First Name: \(firstName), Last Name: \(lastName), Age: \(age)")
    }
}