//: Playground - noun: a place where people can play

import Cocoa


// Closure Expressions

let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]


// Inline Closure
var reversedNames = names.sorted(by: {
    (s1: String, s2: String) -> Bool in
        return s1 > s2
})

// or written with inferred types

var reversalOfNamesInferred = names.sorted(by: {s1, s2 in return s1 > s2} )
print(reversalOfNamesInferred)

// Implicit Returns from Single-Expression Closures
var implicitReversedNames = names.sorted(by: {s1,s2 in s1 > s2} )
print(implicitReversedNames)

// Shorthand Argument Names
var shorthandReversedNames = names.sorted(by: {$0 > $1} )
print(shorthandReversedNames)

// Operator Methods
var operatorReversedNames = names.sorted(by: > )
print(operatorReversedNames)

// Trailing Closures
reversedNames = names.sorted { $0 > $1 }

/*
 Trailing closures are most useful when the closure is sufficiently long that it is not possible to write it inline on a single line.”
*/

let digitNames = [
    0: "Zero", 1: "One", 2: "Two",   3: "Three", 4: "Four",
    5: "Five", 6: "Six", 7: "Seven", 8: "Eight", 9: "Nine"
]
let numbers = [16, 58, 510]

let strings = numbers.map { (number) -> String in
    var number = number
    var output = ""
    repeat {
    output = digitNames[number % 10]! + output
    number /= 10
    } while number > 0
    return output
}

// Capturing Values

func makeIncrementer(forIncrement amount: Int) -> () -> Int {
    var runningTotal = 0
    func incrementer() -> Int {
        runningTotal += amount
        return runningTotal
    }
    return incrementer
}

let incrementByTen = makeIncrementer(forIncrement: 10)
incrementByTen()
incrementByTen()
incrementByTen()

