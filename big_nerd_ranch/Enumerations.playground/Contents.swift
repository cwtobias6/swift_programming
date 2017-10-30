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
}
















