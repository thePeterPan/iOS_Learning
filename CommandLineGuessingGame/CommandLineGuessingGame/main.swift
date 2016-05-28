//
//  main.swift
//  CommandLineGuessingGame
//
//  Created by Peter Pan on 5/27/16.
//
//

import Foundation

print("Hello, World!")

func input() -> String {
    let keyboard = NSFileHandle.fileHandleWithStandardInput()
    let inputData = keyboard.availableData
    let rawString = NSString(data: inputData, encoding:NSUTF8StringEncoding)
    if let string = rawString {
        return string.stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceAndNewlineCharacterSet())
    } else {
        return "Invalid input"
    }
}

func randomIntBetween(low:Int, high:Int) -> Int {
    let range = high - (low - 1)
    return (Int(arc4random()) % range) + (low - 1)
}

let answer = randomIntBetween(0, high: 100)
var guesses: Int = 1

while (true) {

    print("Guess \(guesses): Enter a number between 1 and 100.")
    
    let userInput = input()
    let userInputInt: Int? = Int(userInput)
    
    if let guess = userInputInt {
        if (guess > answer) {
            print("Lower!")
        } else if (guess < answer) {
            print("Higher!")
        } else {
            print("Correct! The answer was \(answer).")
            break
        }
        guesses += 1
    } else {
        print("Invalid input! Please enter a number.")
    }
}

print("It took you \(guesses) tries.")