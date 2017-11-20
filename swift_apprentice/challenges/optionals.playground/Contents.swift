//: Playground - noun: a place where people can play

import UIKit

// #1
var name: String? = "Ray"
var age: Int? = nil // add "?" to make it an optional
let distance: Float = 26.7
var middleName: String? = nil


// #2

func divideIfWhole(_ value: Int, by divisor: Int) {
    
    let divisible: Int? = (value % divisor == 0) ? (value / divisor) : nil
    
    guard let answer = divisible else {
        print("Not divisible :[.")
        return
    }
    
    print("Yep, it divides \(answer) times")
    
}

divideIfWhole(10, by: 3)


// #3

let number: Int??? = 10

if let number = number {
    if let number = number {
        if let number = number {
            print(number)
        }
    }
}


