//: Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"

print("The maximum Int value is \(UInt16.max).")
print("The miniumu Int value is \(UInt.min).")

print(11.0 / 3)

let d1 = 1.1 // Implicitly Double
let d2: Double = 1.1
let f1: Float = 100.3

if d1 == d2 {
    print("d1 and d2 are the same!")
}

print("d1 + 0.1 is \(d1 + 0.1)")
if d1 + 0.1 == 1.2 {
    print("d1 + 0.1 is equal to 1.2")
}
