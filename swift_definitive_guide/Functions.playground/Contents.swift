
import Cocoa

// Basic Function
func greet(person name: String) -> String {
    let greeting = "Welcome, \(name)!"
    
    return greeting
}

greet(person: "Christian")

func printAndCount(string:String) -> Int {
    print("Hello \(string)")
    return string.count
}

printAndCount(string: "Chicken Wings")
