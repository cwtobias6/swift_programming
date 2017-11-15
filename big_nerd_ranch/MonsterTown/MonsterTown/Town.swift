//
//  Town.swift
//  MonsterTown
//
//  Created by Christian Tobias on 11/14/17.
//  Copyright © 2017 Christian Tobias. All rights reserved.
//

import Foundation


struct Town {
    var population: Int = 5422
    var numberOfStoplights = 4
    
    func printDescription() {
        print("Population: \(population) ; number of stoplights: \(numberOfStoplights)")
    }
    
    mutating func changePopulation(by amount:Int) {
        population += amount
    }
}
