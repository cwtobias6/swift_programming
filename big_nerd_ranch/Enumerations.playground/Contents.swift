//: Playground - noun: a place where people can play

import Cocoa

enum TextAlignment {
    case left
    case right
    case center
    case justify
}

var alignment: TextAlignment = TextAlignment.left

alignment = .justify

switch alignment {
case .right:
    print("Right Aligned.")
case .left:
    print("Left Aligned.")
case .center:
    print("Center Aligned.")
case .justify:
    print("Justify Content.")
}

// raw values

enum TextAlignmentRawValues: Int {
    case left    = 20
    case right   = 30
    case center  = 40
    case justify = 50
    
}

TextAlignmentRawValues.left.rawValue
TextAlignmentRawValues.right.rawValue
TextAlignmentRawValues.center.rawValue
TextAlignmentRawValues.justify.rawValue



// Create a raw value
let myRawValue = 20

// Try to convert the raw value into a TextAlignment
if let myAlignment = TextAlignmentRawValues(rawValue: myRawValue) {
    // Conversion succeeded!
    print("successfully converted \(myRawValue) into a TextAlignment")
} else {
    // Conversion failed
    print("\(myRawValue) has no corresponding TextAlignment case")
}

enum ProgrammingLanguage: String {
    case swift      = "swift"
    case objectiveC = "objective-c"
    case c          = "c"
    case cpp        = "c++"
    case java       = "java"
}

let myFavoriteLanguage = ProgrammingLanguage.swift

print(myFavoriteLanguage.rawValue) // Raw value is in String Format

/* You did not have to specify values when you first used a raw value of type Int – the compiler automatically set the first case to 0, the second case to 1, and so on. Here, you specified the corresponding raw String value for each case. This is not necessary: If you omit the raw value, Swift will use the name of the case itself. Modify ProgrammingLanguage to take out the raw values that match their case names. */



// Methods

enum Lightbulb {
    case on
    case off
    
    func surfaceTemperature(forAmbientTemperature ambient: Double)->Double {
        switch self {
        case .on:
            return ambient + 150
        case .off:
            return ambient
        }
    }
    
    mutating func toggle() {
        switch self {
        case .on:
            self = .off
        case .off:
            self = .on
        }
    }
}

var bulb = Lightbulb.on

bulb.toggle() //off

bulb.toggle() // back on

var bulbTemp = bulb.surfaceTemperature(forAmbientTemperature: 77)


print(bulbTemp)


// Associated values allow you to attach data to instances of an enumeration, and different cases can have different types of associated values.


enum ShapeDimensions {
    
    // This is Deimensionless
    case point
    
    // square's associated value is the length of one side
    case square(side: Double)
    
    // rectangle's associated value defines its width and height
    case rectangle(width: Double, height: Double)
    
    func area() -> Double {
        switch self {
        
        case .point:
            return 0
        case let .square(side: side):
            return side * side
            
        case let .rectangle(width: w, height: h):
            return w * h
        }
    }
    
    func perimeter() -> Double {
        
        switch self {
            case .point:
                return 0
        case let .square(side:side):
                return side * 4
        case let .rectangle(width: w, height: h):
                return (w*2) + (h*2)
        }
        
        
    }
    
}

var squareShape = ShapeDimensions.square(side: 10.0)
var rectShape = ShapeDimensions.rectangle(width: 5.0, height: 10.0)
var pointShape = ShapeDimensions.point

print("square's area = \(squareShape.area())")
print("rectangle's area = \(rectShape.area())")
print("point's area = \(pointShape.area())")


// Recursive Enumerations, Tree Data Structures

/* Swift can introduce a layer of indirection. Instead of deciding how much memory oneKnownParent will require (which would lead back into infinite recursion), you can use the keyword indirect to instruct the compiler to instead store the enum’s data behind a pointer. */

indirect enum FamilyTree {
    case noKnownParents
    case oneKnownParent(name: String, ancestors: FamilyTree)
    case twoKnownParents(fatherName: String, fatherAncestors: FamilyTree,
        motherName: String, motherAncestors: FamilyTree)
}

// Example
let fredAncestors = FamilyTree.twoKnownParents(
    fatherName: "Fred Sr.",
    fatherAncestors: .oneKnownParent(name: "Beth", ancestors: .noKnownParents),
    motherName: "Marsha",
    motherAncestors: .noKnownParents)







