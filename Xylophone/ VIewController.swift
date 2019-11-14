//
//  ViewController.swift
//  Xylophone
//
//  Created by Samir Imtiaz on 10/11/2019.
//  Copyright © 2019 SamirImtiaz. All rights reserved.
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

