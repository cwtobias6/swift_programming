//: Playground - noun: a place where people can play

import Cocoa

func printGreeting() {
    print("Hello Person")
}


printGreeting()

func printPersonalGreeting(name: String) {
    print("Hello \(name).")
}

printPersonalGreeting(name: "Christian")

// Explicit parameter names

func explicitlyPrintPersonalGreeting(to name: String) {
    print("Hello \(name).")
}

explicitlyPrintPersonalGreeting(to: "Tish")

// Variadic Functions

func printVariadicGreetings(to names: String...) {
    for name in names {
        printPersonalGreeting(name: name)
    }
}

printVariadicGreetings(to: "Me", "Myself", "I")


// In-Out Parameter

var error = "The request failed:"
func appendErrorCode(_ code: Int, toErrorString errorString: inout String) {
    if code == 400 {
        errorString += " bad request."
    }
}
appendErrorCode(400, toErrorString: &error)
error

// Multiple Returns

func sortedEvenOddNumbers(_ numbers:[Int])-> (evens: [Int], odds:[Int]) {
    var evens = [Int]()
    var odds = [Int]()
    
    for number in numbers {
        if number % 2 == 0 {
            evens.append(number)
        } else {
            odds.append(number)
        }
    }
    
    return (evens,odds)
    
}

sortedEvenOddNumbers([1,2,3,4,5,6,6765,4543,345])

// Optional Returns

func grabMiddleName(fromFullName name: (String, String?, String))-> String? {
    return name.1
    
}

grabMiddleName(fromFullName: ("Tish",nil,"Chicken Wings"))

// Guard Statements

func greetByMiddleName(fromFullName name: (first: String,middle: String?,last: String)) {
    guard let middleName = name.middle else {
        print("Hey there!")
        return
    }
    print("Hey \(middleName)")
}
greetByMiddleName(fromFullName: ("Matt","Danger","Mathias"))



// Function Types

let evenOddFunction: ([Int]) -> ([Int], [Int]) = sortedEvenOddNumbers

evenOddFunction([1,2,3,4,5])

// Bronze Challenge

func greetByMiddleNameBronze(fromFullName name: (first: String, middle: String?, last: String)) {
    guard let middleName = name.middle, middleName.characters.count < 4 else {
        print("Hey there!")
        return
    }
    print("Hey \(middleName)")
}
greetByMiddleNameBronze(fromFullName: ("Matt","Dang","Mathias"))

// Silver Challenge

func siftBeans(fromGroceryList list: [String]) -> (beans: [String], otherGroceries: [String]) {
    var beans = [String]()
    var otherGroceries = [String]()
    
    for item in list {
        if item.contains("bean") {
            beans.append(item)
        } else {
            otherGroceries.append(item)
        }
    }
    
    return (beans, otherGroceries)
    
    
}

let result = siftBeans(fromGroceryList: ["green beans",
                                         "milk",
                                         "black beans",
                                         "pinto beans",
                                         "apples"])

result.beans == ["green beans", "black beans", "pinto beans"] // true
result.otherGroceries == ["milk", "apples"] // true




