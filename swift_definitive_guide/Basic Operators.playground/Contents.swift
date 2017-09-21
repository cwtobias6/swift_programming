//: Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"

// Remainder Operator

4 % -3
4 % 3

// Ternary Conditional Operator 

var hungry: Bool = true

var timeToEat: String = (hungry) ? "Go to Whole Foods": "Pepto Bismol"

// Nil-Coalescing Operator

var defaultActivity: String = "Netflix"
var currentActivity: String?

var todaysActivity = currentActivity ?? defaultActivity

// Range Operators

for i in 1...10 { // closed range operator
    print(i)
}

let games: Array = ["Halo 2", "Overwatch", "NBA2K"]

let gamesLength = games.count

for i in 0..<gamesLength { // Half Open Range Operator
    print("\(games[i])")
}