//: Playground - noun: a place where people can play

import Cocoa

//var groceryBag = Set<String>()
var groceryBag: Set = ["Apples", "Oranges", "Pineapple"]

groceryBag.insert("Apples")
groceryBag.insert("Oranges")
groceryBag.insert("Pineapple")

for food in groceryBag {
    print(food)
}
groceryBag

let hasBananas = groceryBag.contains("Bananas")
var friendsGroceryBag = Set(["Bananas", "Cereal", "Milk", "Oranges"])
let commonGroceryBag = groceryBag.union(friendsGroceryBag)

let roommatesGroceryBag = Set(["Apples", "Bananas", "Cereal", "Toothpaste"])
let itemsToReturn = commonGroceryBag.intersection(roommatesGroceryBag)

let yourSecondBag = Set(["Berries", "Yogurt"])
let roommatesSecondBag = Set(["Grapes", "Honey"])
let disjoint = yourSecondBag.isDisjoint(with: roommatesSecondBag)

let myCities = Set(["Atlanta", "Chicago",
                    "Jacksonville", "New York", "San Francisco"])
let yourCities = Set(["Chicago", "San Francisco", "Jacksonville"])

let isSuperSet = myCities.isSuperset(of: yourCities)


friendsGroceryBag.formUnion(groceryBag)