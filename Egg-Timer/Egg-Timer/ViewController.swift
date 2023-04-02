//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!
    
    let eggTimes = [ "Soft": 3, "Medium": 420, "Hard": 720 ]
    var totalTime = 0
    var secondsPassed = 0
    var timer = Timer()
    
    @IBAction func hardnessSelected(_ sender: UIButton) {
        
        timer.invalidate()
        progressBar.progress = 0.0
        secondsPassed = 0
        let hardness = sender.currentTitle!
        eggQuestion.text = "♨️  \(hardness) ♨️"
        totalTime = eggTimes[hardness]!
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
    }
    
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var eggQuestion: UILabel!
    @objc func updateTimer() {
        progressBar.progress = 1
        if secondsPassed < totalTime {
            let percentageProgress = Float( secondsPassed ) / Float( totalTime )
            progressBar.progress = Float(percentageProgress)
            print("\(secondsPassed) seconds passed ")
            secondsPassed += 1
        }
        else {
            
            timer.invalidate()
            eggQuestion.text = "DONE !"
            playSound(currentButtonTitle: "alarm_sound")
        }
    }
    
    func playSound(currentButtonTitle: String) {
        let url = Bundle.main.url(forResource: "\(currentButtonTitle)", withExtension: "mp3")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }
}
