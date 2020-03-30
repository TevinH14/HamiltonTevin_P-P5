//
//  CharacterquotesInterfaceController.swift
//  HamiltonTevin_StarBoared_Watch Extension
//
//  Created by Tevin Hamilton on 3/30/20.
//  Copyright © 2020 Tevin Hamilton. All rights reserved.
//

import WatchKit
import AVFoundation

class CharacterQuotesInterfaceController:InterfaceController, PlayQuotes{
    var audioPlayer: AVAudioPlayer?

    override func awake(withContext context: Any?) {
        
    }
    override func willActivate() {
        
    }
    override func didDeactivate() {
        
    }
    
    
    
    @IBAction func playDarthVader() {
        let soundFileNameArray = ["I am your father", "Darth Vader breathing", "The power of the dark side"]
        let randomName = soundFileNameArray.randomElement()!
        playSound(named: randomName)
    }
    @IBAction func playLukeSkywalker() {
        let soundFileNameArray = ["Piece o junk", "Size of that thing", "Become a Jedi"]
        let randomName = soundFileNameArray.randomElement()!
        playSound(named: randomName)
    }
    @IBAction func playYoda() {
        let soundFileNameArray = ["There is no try", "Fear is the path", "learn"]
        let randomName = soundFileNameArray.randomElement()!
        playSound(named: randomName)

    }
    @IBAction func playDarthSidious() {
        let soundFileNameArray = ["Do it", "execute_order_66", "Your mother"]
        let randomName = soundFileNameArray.randomElement()!
        playSound(named: randomName)
    }
    
}
