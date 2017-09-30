//
//  ViewController.swift
//  BackToThePast
//
//  Created by Вячеслав Горлов on 30.09.17.
//  Copyright © 2017 Gorloff Foundation. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var audioPlayer: AVAudioPlayer!
    let soundArray = ["C", "D", "E", "F", "G", "A", "B"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func notePressed(_ sender: UIButton) {
        let soundURL = Bundle.main.url(forResource: "note_" + self.soundArray[sender.tag].lowercased(), withExtension: "wav")
        do {
            self.audioPlayer = try AVAudioPlayer(contentsOf: soundURL!)
        } catch {
            print(error)
        }
        self.audioPlayer.play()
    }


}

