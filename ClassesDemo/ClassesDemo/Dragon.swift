//
//  Dragon.swift
//  ClassesDemo
//
//  Created by Muhammet BOZKURT on 6.04.2023.
//

import Foundation

class Dragon: Enemy {
    var wingSpan = 5
    
    func talk(speech: String) {
        print("Says \(speech)")
    }
    
    override func move() {
        print("Flies forward")
    }
    
    override func attack() {
        super.attack()
        print("Spits fire deals 10 damage")
    }
}
