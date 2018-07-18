//
//  FieldSurvey.swift
//  Field Survey
//
//  Created by Ethan Schutzenhofer on 7/16/18.
//  Copyright © 2018 Ethan Schutzenhofer. All rights reserved.
//

import Foundation

struct FieldSurvey {
    let animal: Animal
    let title: String
    let description: String
    let date : Date
    
    init(animal : Animal, title: String, description: String, date: Date) {
        self.animal = animal
        self.title = title
        self.description = description
        self.date = date
        
    }
    
    init?(animalName: String, title: String, description: String, date: Date){
        if let animal = Animal(rawValue : animalName){
         self.init(animal: animal, title: title, description: description, date: date)
        }else {
            return nil
        }
    }
}
