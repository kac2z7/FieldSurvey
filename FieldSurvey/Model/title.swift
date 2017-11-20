//
//  title.swift
//  FieldSurvey
//
//  Created by Keith Compton on 11/3/17.
//  Copyright © 2017 Keith Compton. All rights reserved.
//


import Foundation

struct title {
    let classification: Classification
    let title: String
    let description: String
    let date: Date

    init(classification: Classification, title: String, description: String, date: Date){
        self.classification = classification
        self.title = title
        self.description = description
        self.date = date
    }
    init?(animalName: String, title: String, description: String, date: Date){
        if let classification = Classification(rawValue: animalName){
            self.init(classification: classification, title: title, description: description, date: date)
        }
        else{
            return nil
        }
    }
}
