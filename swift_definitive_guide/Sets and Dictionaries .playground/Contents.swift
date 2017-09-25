//: Playground - noun: a place where people can play

import Cocoa


// Initializing Empty Set

var letters = Set<Character>()

print(letters.count)

var musicGenres: Set = ["hip-hop", "rock", "jazz"]

musicGenres.insert("Classical")

for genre in musicGenres {
    print(genre)
}

for genre in musicGenres.sorted() {
    print("\n" + genre)
}

musicGenres.count

musicGenres.contains("hip-hop")

// Set Operations

let evens: Set = [2,4,6,8]
let odds: Set = [1,3,5,7,9]
let prime: Set = [2,3,5,7]
let singleDigits: Set = [1,2,3,4,5,6,7,8,9]

evens.intersection(odds)
evens.intersection(prime)
prime.symmetricDifference(odds)
evens.union(odds).sorted()
odds.subtracting(prime)

evens.isSubset(of: singleDigits)
prime.isSubset(of: singleDigits)
singleDigits.isSubset(of: prime)
singleDigits.isSubset(of: singleDigits)

singleDigits.isSuperset(of: prime)

evens.isDisjoint(with: odds)


// Dictionaries

var nickNames: [String:String] = ["Christian": "Tish", "Lil scarface 09": "Online Hero"]

nickNames["Christian"]

let oldValue = nickNames.updateValue("Halo 2 Online Hero", forKey: "Lil scarface 09")

for (name,nickname) in nickNames {
    print("My real name is \(name), but better known as \(nickname).")
}

for names in nickNames.keys {
    print("These are my real names: \(names)... kindof.")
}













