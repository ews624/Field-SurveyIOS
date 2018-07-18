//
//  Animal.swift
//  Field Survey
//
//  Created by Ethan Schutzenhofer on 7/16/18.
//  Copyright © 2018 Ethan Schutzenhofer. All rights reserved.
//

import UIKit


enum Animal: String{
    case amphibian
    case bird
    case fish
    case insect
    case mammal
    case plant
    case reptile
    
    var image: UIImage? {
    return UIImage(named: self.rawValue + "Icon")
    }
}
