//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    var diceImages = [UIImage(named: "DiceOne"), UIImage(named: "DiceTwo"), UIImage(named: "DiceThree"), UIImage(named: "DiceFour"), UIImage(named: "DiceFive"), UIImage(named: "DiceSix")]
    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        diceImageView1.image = diceImages[Int.random(in: 0...5)]
        diceImageView2.image = diceImages.randomElement()!
        // you can use both methods
        // some methods changed so I had to force the random element method
    }
    
}

