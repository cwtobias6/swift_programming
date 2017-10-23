//: Playground - noun: a place where people can play

import Cocoa

func echoString(_ s:String, times:Int) -> String {
    var result = ""
    for _ in 1...times { result += s }
    return result
}

let s = echoString("hi ", times:3)

// Function overloading
func say (_ what:String) {
}
func say (_ what:Int) {
}
