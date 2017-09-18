//: Playground - noun: a place where people can play

import Cocoa


let explicitFloat: Float = 4.0

let label = "The width is "
let width = 42
let widthLabel = label + String(width) // Converting type Int to String for concatenation

let name: String = "Tish"
print("I am \(name)")


let individualScores = [75, 43, 103, 87, 12]
var teamScores = 0

for score in individualScores {
    
    if score > 50 {
        teamScores += 3
    } else {
        teamScores += 1
    }
    
}

print(teamScores)


///////// Optionals

var optinalString: String? = "hello"
print(optinalString == nil)

var optionalName: String? = "Tish"
var greeting = "Hello!"
if let name = optionalName {
    greeting = "Hello, \(name)."
} else {
    greeting = "Hello Mr.Nil"
}

let nickName: String? = nil
let fullName = "John Appleseed"

let informalGreeting = "Hi \(nickName ?? fullName)"

let vegtable = "Red pepper"

switch vegtable {
case "celery":
    print("Add some raisins and make ants on a log.")
case "cucumber":
    print ("That would make a good tea sandwhich.")
case let x where x.hasSuffix("pepper"):
    print("Is it a spicy \(x)?")
default:
    print("Everything tastes good in soup")
}

// Functions and Closures

func greet(person: String, day: String) -> String {
    
    return "Hello \(person), today is \(day)."
}

greet(person: "Tish" , day: "Monday")

func favFood(_ food: String) -> String { // Underscore allows for optional argument Label
    return "I love to eat \(food)."
}

favFood("Chicken Wings")

func sumOf(numbers: Int...) -> Int {
    var sum = 0
    
    for number in numbers {
        sum += number
    }
    
    return sum
}

sumOf()

sumOf(numbers: 3,44,65)

func avgOf(numbers: Int...) -> Int {
    var total = 0
    
    for number in numbers {
        total += number
    }
    
    return total / numbers.count
    
}

avgOf(numbers: 10,20)














