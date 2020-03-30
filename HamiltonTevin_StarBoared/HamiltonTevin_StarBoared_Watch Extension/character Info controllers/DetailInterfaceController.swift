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
    
    @IBOutlet weak var imageView: WKInterfaceImage!
    @IBOutlet weak var labelName: WKInterfaceLabel!
    @IBOutlet weak var labelBirthYear: WKInterfaceLabel!
    @IBOutlet weak var labelGender: WKInterfaceLabel!
    @IBOutlet weak var labelEyeColor: WKInterfaceLabel!
    @IBOutlet weak var labelHeight: WKInterfaceLabel!
    
    override func awake(withContext context: Any?) {
        if let character = context as? StarWarsCharacter{
            imageView.setImage(getImage(charaterName: character.name))
            labelName.setText(character.name)
            labelBirthYear.setText(character.birth_year)
            labelGender.setText(character.gender)
            labelHeight.setText(character.height)
            labelEyeColor.setText(character.eye_color)
        }
    }
    
    override func willActivate() {
        
    }
    override func didDeactivate() {
        
    }
    
    func getImage(charaterName:String)-> UIImage{
        
        var selectedImageString:String = ""
        switch charaterName {
        case "Luke Skywalker":
            selectedImageString = "Image_0"
        case "C-3PO":
            selectedImageString = "Image_1"
        case "R2-D2":
            selectedImageString = "Image_2"
            
        case "Darth Vader":
            selectedImageString = "Image_3"
            
        case "Leia Orgrana":
            selectedImageString = "Image_4"
            
        case "Obi-Wan Kenobi":
            selectedImageString = "Image_5"
            
        default:
            selectedImageString = "Image_6"
            
        }
        let selectedImage:UIImage? = UIImage(named: selectedImageString)
        return selectedImage!
    }
}
