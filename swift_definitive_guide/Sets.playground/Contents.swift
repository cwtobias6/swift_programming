//: Playground - noun: a place where people can play

import Cocoa

// “A set stores distinct values of the same type in a collection with no defined ordering.”

//“You can use a set instead of an array when the order of items is not important, or when you need to ensure that an item only appears once.”

// A Basic Set

var letters = Set<Character>()

// Creating a Set with an array literal
var favoriteGenres: Set<String> = ["rock", "rap", "reagee"]
// or with type inference
var genres: Set = ["classical", "indie", "r&b"]

// Fundamental Set Operations
let oddDigits: Set = [1, 3, 5, 7, 9]
let evenDigits: Set = [0, 2, 4, 6, 8]
let singleDigitPrimeNumbers: Set = [2, 3, 5, 7]

oddDigits.union(evenDigits).sorted()
oddDigits.intersection(evenDigits).sorted()
oddDigits.subtracting(singleDigitPrimeNumbers).sorted()
oddDigits.symmetricDifference(singleDigitPrimeNumbers).sorted()

let houseAnimals: Set = ["🐶", "🐱"]
let farmAnimals: Set = ["🐮", "🐔", "🐑", "🐶", "🐱"]
let cityAnimals: Set = ["🐦", "🐭"]

houseAnimals.isSubset(of: farmAnimals)

farmAnimals.isSuperset(of: houseAnimals)

farmAnimals.isDisjoint(with: cityAnimals)

