//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController{
    
var audioPlayer = AVAudioPlayer()
    override func viewDidLoad() {
        super.viewDidLoad()
    }



    @IBAction func notePressed(_ sender: UIButton) {
        
        playSound(soundNumber: sender.tag)
        
    }
    
    func playSound(soundNumber : Int) {
        guard let sound = Bundle.main.path(forResource: "note\(soundNumber)", ofType: "wav") else {
            print("error to get the mp3 file")
            return
        }
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound))
        } catch {
            print("audio file error")
        }
        audioPlayer.play()
    }

}

