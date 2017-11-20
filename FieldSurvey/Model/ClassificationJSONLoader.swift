//
//  ClassificationJSONLoader.swift
//  FieldSurvey
//
//  Created by Keith Compton on 11/3/17.
//  Copyright © 2017 Keith Compton. All rights reserved.
//


import Foundation

import Foundation

class TitlesJSONLoader{
    class func load(fileName: String) -> [title]{
        var observations = [title]()
        
        if let path = Bundle.main.path(forResource: fileName, ofType: "json"),
            let data = try? Data(contentsOf: URL(fileURLWithPath: path)){
            observations = ClassificationJSONParser.parse(data)
        }
        return observations
    }
    
}
