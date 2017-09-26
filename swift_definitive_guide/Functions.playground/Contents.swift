
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

// Functions with multiple returns, return tuples

func minMax(array: [Int]) -> (min: Int, max: Int) {
    var currentMin = array[0]
    var currentMax = array[0]
    for value in array[1..<array.count] {
        if value < currentMin {
            currentMin = value
        } else if value > currentMax {
            currentMax = value
        }
    }
    return (currentMin, currentMax)
}

minMax(array: [1,2,3,4,5,6,7])
