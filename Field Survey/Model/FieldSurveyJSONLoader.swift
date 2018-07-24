//
//  FieldSurveyJSONLoader.swift
//  Field Survey
//
//  Created by Ethan Schutzenhofer on 7/17/18.
//  Copyright © 2018 Ethan Schutzenhofer. All rights reserved.
//

import Foundation

class FieldSurveyJSONLoader {
    
    class func load(fileName: String) -> [FieldSurvey]{
        var events = [FieldSurvey]()
        
        
        if let path = Bundle.main.path(forResource: fileName, ofType: "json"),
        
        let data = try? Data(contentsOf: URL(fileURLWithPath: path)){
            events = FieldSurveyJSONParser().parse(data)
        }
        
      return events
    }
}
