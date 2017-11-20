//: Playground - noun: a place where people can play

import UIKit

// #1
var sum = 0
for i in 0...5 {sum += i}

print(sum)

// #2

var aLotOfAs = ""
while aLotOfAs.count < 10 {
    aLotOfAs += "a"
}

print(aLotOfAs)

// #3

let coordinates = (1, 5, 0)
//let coordinates = (2, 2, 2)
//let coordinates = (3, 0, 1)
//let coordinates = (3, 2, 5)
//let coordinates = (0, 2, 4)

switch coordinates {
case let (x, y, z) where x == y && y == z:
    print("x = y = z")
case (_, _, 0):
    print("On the x/y plane")
case (_, 0, _):
    print("On the x/z plane")
case (0, _, _):
    print("On the y/z plane")
default:
    print("Nothing special")
}

// #4

// A closed range can never be empty since the beginning and end cannot be the same number

// #5

for i in 0...10 {
    print(10 - i)
}







