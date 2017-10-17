//: Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"

// Empty Array
var someInts = [Int]()

// Array with default value
var sevenSevens = Array(repeating: 7, count: 7)
var tenLetterZ = Array(repeating: "A", count: 10)
var eightEights = Array(repeating: 8, count: 8)

// Adding Array's together (that are of the same type)
sevenSevens + eightEights

// Array literal of short-hand

var shoppingList: [String] = ["Milk", "Eggs"]

var shorthandShoppingList = ["Milk", "Eggs"]

//Manipulating Shopping List

shoppingList.count
shoppingList.isEmpty
shoppingList += ["Chicken", "Beef","Turkey", "Cheese", "Butter"]
var lastItem = shoppingList[shoppingList.count - 1]
shoppingList[2...4] = ["Apples", "Bananas", "Soup"]
shoppingList.insert("Pepper", at: 5)
var eggs = shoppingList.remove(at: 1)

// Iterating over an array

for shoppingItem in shoppingList {
    print(shoppingItem)
}

// Iterating with integer indexes
for (index, value) in shoppingList.enumerated() {
    print("\(value) is at index \(index)")
}














