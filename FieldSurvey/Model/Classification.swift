//
//  Animal.swift
//  FieldSurvey
//
//  Created by Keith Compton on 11/3/17.
//  Copyright © 2017 Keith Compton. All rights reserved.
//


import UIKit

enum Classification: String{
    case bird
    case amphibian
    case mammal
    case plant
    case reptile
    case insect
    case fish
    
    var image: UIImage? {
        return UIImage(named: self.rawValue + "Icon")
    }
}
