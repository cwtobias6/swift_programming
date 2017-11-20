//: Playground - noun: a place where people can play

import UIKit


// #1

for index in stride(from: 10.0, through: 9.0, by: 0.1) {
    print(index)
}

// #2

func isNumberDivisible(_ number: Int, by divisor: Int) -> Bool {
    return (number % divisor) == 0 ? true :  false
}



