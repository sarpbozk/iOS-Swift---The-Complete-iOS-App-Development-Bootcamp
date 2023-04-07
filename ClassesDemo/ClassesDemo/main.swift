//
//  main.swift
//  ClassesDemo
//
//  Created by Muhammet BOZKURT on 6.04.2023.
//

import Foundation

let skeleton = Enemy()
//print(skeleton.health)
//skeleton.move()
//skeleton.attack()

let skeleton2 = Enemy()
let skeleton3 = Enemy()

let dragon = Dragon()
dragon.wingSpan = 5
dragon.attackStrenght = 15
dragon.talk(speech: "My teeth are swords ! My claws are spears ! my wings are hurricane !")
dragon.move()
dragon.attack()

// classes are passed by reference if you equal it modifications will apply to both !
// structs are passed by values !
// not applied to struct !
// structsw are immutable if you want to modify a and make a func that changes variables you must make it mutating func () {}
// STRUCT                           CLASS
// immutable                        passed by reference
// passed by value                  inheritence
