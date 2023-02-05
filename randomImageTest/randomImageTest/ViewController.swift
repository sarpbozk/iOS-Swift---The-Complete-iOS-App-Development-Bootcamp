//
//  ViewController.swift
//  randomImageTest
//
//  Created by Muhammet BOZKURT on 23.01.2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var wallpaper: UIImageView!
    let collectionOfWallpapers = [UIImage(named: "firstImage"), UIImage(named: "secondImage"), UIImage(named: "thirdImage"), UIImage(named: "fourthImage")]
    
    @IBAction func changeWallpaper(_ sender: Any) {
        wallpaper.image = collectionOfWallpapers.randomElement()!
    }
}

