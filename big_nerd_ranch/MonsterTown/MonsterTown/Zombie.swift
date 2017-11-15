//
//  Zombie.swift
//  MonsterTown
//
//  Created by Christian Tobias on 11/14/17.
//  Copyright © 2017 Christian Tobias. All rights reserved.
//

import Foundation


class Zombie:Monster {
    var walksWithLimp = true
    
    final override func terrorizeTown() {
        
        town?.changePopulation(by: -10)
        super.terrorizeTown()
    }
    
}
