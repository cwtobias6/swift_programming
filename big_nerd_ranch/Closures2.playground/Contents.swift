//: Playground - noun: a place where people can play

import Cocoa


let volunteerCounts = [1,3,40,32,2,53,77,13]

func sortAscending(_ i: Int, _ j: Int) -> Bool {
    return i < j
}

let volunteersSorted = volunteerCounts.sorted(by:{
        (_ i: Int, _ j: Int) -> Bool  in
            return i < j
})

// Functions as return types

func makeTownGrand() -> (Int, Int) -> Int {
    func buildRoads(byAddingLights lights: Int,
                    toExistingLights existingLights: Int) -> Int {
        return lights + existingLights
    }
    return buildRoads
}

var stoplights = 4
let townPlanByAddingLightsToExistingLights = makeTownGrand()
stoplights = townPlanByAddingLightsToExistingLights(4, stoplights)
print("Knowhere has \(stoplights) stoplights.")


