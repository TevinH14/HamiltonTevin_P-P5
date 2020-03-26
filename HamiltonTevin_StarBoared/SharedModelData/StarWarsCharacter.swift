//
//  StarWarsCharacter.swift
//  HamiltonTevin_StarBoared
//
//  Created by Tevin Hamilton on 3/22/20.
//  Copyright © 2020 Tevin Hamilton. All rights reserved.
//

import Foundation
class StarWarsCharacter{
let name: String
let gender: String
let birth_year: String
let height:String
let eye_color:String
    
    init(name:String, gender:String, birth_year: String,
         height:String,eye_color:String) {
        self.name = name
        self.gender = gender
        self.birth_year = birth_year
        self.height = height
        self.eye_color = eye_color
    }
}


