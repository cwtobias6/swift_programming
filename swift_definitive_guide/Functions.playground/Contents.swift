
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

printAndCount(string: "Everyone")

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

// no input parameters
func sayHelloWorld() -> String {
    return "Hello World!"
}

print(sayHelloWorld())

// Multiple Parameters

func greetAnother(person: String, again: Bool) -> String {
    if again == true {
        return "Hello again, " + person
    } else {
        return "Hello, " + person
    }
}

print(greetAnother(person: "Matt", again: true))

// Argument labels
func thisIsAnExample(ofAnArgumentLabel label : String ) {
    print(label)
}

thisIsAnExample(ofAnArgumentLabel: "Do you see what I mean?")

// Omitting argument labels
func omitThis(_ label : String) {
    print(label)
}

omitThis("Omitted label")

/*  In-Out Parameters
 
 If you want a function to modify a parameter’s value, and you want those changes to persist after the function call has ended, define that parameter as an in-out parameter instead.
 
 */

func swapInts(a: inout Int, b: inout Int) {
    let aIsNowB = a
    
    a = b
    
    b = aIsNowB
    
}

var someInt: Int = 100

var anotherInt: Int = 1

swapInts(a: &someInt, b: &anotherInt)

print(someInt)
print(anotherInt)







