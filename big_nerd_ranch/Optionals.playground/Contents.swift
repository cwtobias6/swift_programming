//: Playground - noun: a place where people can play

import Cocoa

var errorCodeString: String?
errorCodeString = "404"

//if errorCodeString != nil {
//    let theError = errorCodeString!
//    print(theError)
//}

if let theError = errorCodeString {
    print(theError)
}