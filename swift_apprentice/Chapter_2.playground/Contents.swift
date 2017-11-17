//: Playground - noun: a place where people can play

import UIKit

// Type conversion

var integer: Int = 22
var double: Double = 25.23

var doubleConvertedToInteger = Int(double) // loss of precision

var wannabeDouble = 4.0

wannabeDouble + 1

// Tuples

var aRandomTuple = (2,4)

aRandomTuple.0
aRandomTuple.1


let coordinates3D = (x: 2, y: 3, z: 1)
coordinates3D.x
let (x3, y3, z3) = coordinates3D

z3

// Challenges

let coordinates = (2,3)

let namedCoordinate = (row: coordinates.0 , column: coordinates.1 )

namedCoordinate.row

let tuple = (day: 15, month: 8, year: 2015)
let day = tuple.day

var name = "Matt"
name += " Galloway"

let tuple2 = (100, 1.5, 10)
let value = tuple2.1



