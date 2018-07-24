//
//  FieldSurveyJSONParser.swift
//  Field Survey
//
//  Created by Ethan Schutzenhofer on 7/17/18.
//  Copyright © 2018 Ethan Schutzenhofer. All rights reserved.
//

import Foundation


class FieldSurveyJSONParser {
    
    static let dateFormat = DateFormatter()
    
    func parse(_ data : Data) -> [FieldSurvey] {
        var fieldSurveys = [FieldSurvey]()
        FieldSurveyJSONParser.dateFormat.dateFormat = "YYYY-MM-dd HH:mm"
        
        if let  json = try? JSONSerialization.jsonObject(with: data, options: []), let root = json as? [String: Any],
            let statuts = root["status"] as? String,
            
            statuts == "ok" {
            
            if let events = root["observations"] as? [Any]{
                for event in events {
                    if let event = event as? [String : String]{
                      if let classificationName = event["classification"],
                        let titleName = event["title"],
                        let descriptionName = event[
                    "description"],
                        let dateString = event["date"]{
                        let date = FieldSurveyJSONParser.dateFormat.date(from: dateString)
                        
                        if let fieldSurvey = FieldSurvey(animalName: classificationName, title: titleName, description: descriptionName, date: date!){
                            fieldSurveys.append(fieldSurvey)
                        }
                        }
                    }
                }
                }
        }
        
        
        return fieldSurveys
    }
    
}
