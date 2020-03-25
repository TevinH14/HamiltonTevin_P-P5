//
//  DetailInterfaceController.swift
//  HamiltonTevin_StarBoared_Watch Extension
//
//  Created by Tevin Hamilton on 3/24/20.
//  Copyright © 2020 Tevin Hamilton. All rights reserved.
//

import Foundation
import WatchKit

class DetailInterfaceCpontroller: WKInterfaceController {
    
    @IBOutlet weak var labelName: WKInterfaceLabel!
    @IBOutlet weak var labelBirthYear: WKInterfaceLabel!
    override func awake(withContext context: Any?) {
        
    }
    @IBOutlet weak var labelGender: WKInterfaceLabel!
    
    @IBOutlet weak var labelEyeColor: WKInterfaceLabel!
    override func willActivate() {
        
    }
    @IBOutlet weak var labelHeight: WKInterfaceLabel!
    
    override func didDeactivate() {
        
    }
}
