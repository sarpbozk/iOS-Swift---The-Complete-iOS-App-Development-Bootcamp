
import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func keyPressed(_ sender: UIButton) {
        
        if let currentButtonTitle = sender.currentTitle {
            playSound(currentButtonTitle: currentButtonTitle)
        } else {
            print("Error: Button title is nil")
        }
        
        //Reduces the sender's (the button that got pressed) opacity to half.
        sender.alpha = 0.5
        
        //Code should execute after 0.2 second delay.
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            //Bring's sender's opacity back up to fully opaque.
            sender.alpha = 1.0
        }
        
    }
    
    func playSound(currentButtonTitle: String) {
        if let url = Bundle.main.url(forResource: "\(currentButtonTitle)", withExtension: "wav") {
            do {
                player = try AVAudioPlayer(contentsOf: url)
                player?.play()
            } catch {
                print("Error: Unable to initialize AVAudioPlayer with the provided URL: \(error.localizedDescription)")
            }
        } else {
            print("Error: URL is nil")
        }
    }
    
}
