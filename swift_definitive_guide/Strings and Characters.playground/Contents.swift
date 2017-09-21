//: Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"

var emptyString = String()

emptyString.isEmpty

// Characters
var aBunchOfCharacters = "A Bunch of Characters".characters

for character in aBunchOfCharacters {
    print(character)
}

// Accessing and Modifying a String

var aString = "String Cheese"

aString[aString.startIndex]
// aString[aString.endIndex] causes error

// Must access indices method on characters array

var myIndices = aString.characters.indices

for indice in myIndices {
    print(aString[indice])
}
