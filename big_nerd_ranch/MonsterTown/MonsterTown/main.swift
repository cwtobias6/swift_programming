//
//  main.swift
//  MonsterTown
//
//  Created by Christian Tobias on 10/31/17.
//  Copyright © 2017 Christian Tobias. All rights reserved.
//

import Foundation

var myTown = Town()

myTown.changePopulation(by: 500)
let fredTheZombie = Zombie()
fredTheZombie.town = myTown
fredTheZombie.terrorizeTown()
fredTheZombie.town?.printDescription()

