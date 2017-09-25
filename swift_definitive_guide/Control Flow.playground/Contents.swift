//: Playground - noun: a place where people can play

import Cocoa

let base = 3
let power = 10
var answer = 1

for _ in 1...power {
    answer *= base
}
print("\(base) to the power of \(power) is \(answer)")

// Switch Statments have no implict fall-through

let randomLetter = "c"

switch randomLetter {
case "C", "c": // Compound Case
    print("My name starts with a C.")
case "E":
    print("ET Phone Home")
default:
    print("This isn't the letter i'm looking for...")
}

// Switch Statments and Tuples

let randomPoint = (0,3)

switch randomPoint {
case (0,0):
    print("\(randomPoint) is at eh origin")
case (_, 0):
    print("\(randomPoint) is on the x-axis")
case (0, _):
    print("\(randomPoint) is on the y-axis")
default:
    print("Pick a new point lol.")
}

// Guard statments

func greet(person: [String: String]) {
    guard let name = person["name"] else {
        return
    }
    
    print("Hello \(name)!")
    
    guard let location = person["location"] else {
        print("I hope the weather is nice near you.")
        return
    }
    
    print("I hope the weather is nice in \(location).")
}

greet(person: ["name": "John"])


