//: Playground - noun: a place where people can play

import Cocoa

let volunteerCounts = [1,3,40,32,2,53,77,13]

let volunteersSorted = volunteerCounts.sorted { $0 < $1 }

func makeTownGrand() -> (Int, Int) -> Int {
    func buildRoads(byAddingLights lights: Int,
                    toExistingLights existingLights: Int) -> Int {
        return lights + existingLights
    }
    return buildRoads
}

var stoplights = 4
let townPlanByAddingLightsToExistingLights = makeTownGrand()
stoplights = townPlanByAddingLightsToExistingLights(5, stoplights)
print("Knowhere has \(stoplights) stoplights.")
