//
//  Enemy.swift
//  ClassesDemo
//
//  Created by Muhammet BOZKURT on 6.04.2023.
//

import Foundation
class Enemy {
    var health = 100
    var attackStrenght = 100
    
    func move() {
        print("walk forwards")
    }
    
    func attack() {
        print("Land a hit, does \(attackStrenght) damage")
    }
}
