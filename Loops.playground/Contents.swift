//: Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"

var myFirstInt: Int = 0

for _ in 1...5 {
    myFirstInt += 1
    myFirstInt
    print(myFirstInt)
}

for i in 1...100 where i % 3 == 0 {
    print(i)
}