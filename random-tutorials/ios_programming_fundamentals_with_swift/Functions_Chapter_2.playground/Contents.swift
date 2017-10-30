//: Playground - noun: a place where people can play

import Cocoa

func echoString(_ s:String, times:Int) -> String {
    var result = ""
    for _ in 1...times { result += s }
    return result
}

let stringy = echoString("hi ", times:3)

// Function overloading
// Two functions with similar names, but different parameter types means they can coexist
func say (_ what:String) {
}
func say (_ what:Int) {
}

// In Out Parameters

/* In the function body, we removed all occurrences of the character from the local copy of the String parameter, but this change didn’t affect the original string. */

func removeCharacter(_ c:Character, from s:String) -> Int {
    var s = s
    var howMany = 0
    while let ix = s.index(of:c) {
        s.remove(at:ix)
        howMany += 1
    }
    return howMany
}

let s = "hello"
let result = removeCharacter("l", from:s)


// But now we can change the variable outside of the function with InOut Parameter
func removeCharacter(_ c:Character, from s: inout String) -> Int {
    var howMany = 0
    while let ix = s.index(of:c) {
        s.remove(at:ix)
        howMany += 1
    }
    return howMany
}

var hello = "hello"
let result2 = removeCharacter("l", from:&hello)
print(hello) // prints "heo"

// Variadic parameters

func variadicParameters (_ lotsOfNumbers: Int ...) {
    for number in lotsOfNumbers {
        print(number)
    }
    
}

variadicParameters(2,3,4,5,6)



