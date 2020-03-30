//
//  PlayQuotes.swift
//  HamiltonTevin_StarBoared_Watch Extension
//
//  Created by Tevin Hamilton on 3/30/20.
//  Copyright © 2020 Tevin Hamilton. All rights reserved.
//

import AVFoundation

protocol PlayQuotes: AnyObject {
    var audioPlayer:AVAudioPlayer? {get set}
}

extension PlayQuotes{
    func playSound(named name: String) {
        guard let url = Bundle.main.url(forResource: name, withExtension: "mp3")else {
            fatalError("unable to find file\(name).mp3")
        }
        try? audioPlayer = AVAudioPlayer(contentsOf: url)
        audioPlayer?.play()
    }
   
}
