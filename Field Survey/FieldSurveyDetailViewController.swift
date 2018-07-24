//
//  FieldSurveyDetailViewController.swift
//  Field Survey
//
//  Created by Ethan Schutzenhofer on 7/18/18.
//  Copyright © 2018 Ethan Schutzenhofer. All rights reserved.
//

import UIKit

class FieldSurveyDetailViewController: UIViewController {
    
    var fieldSurvey :FieldSurvey?
    
    var dateFormatter = DateFormatter()
    
    @IBOutlet weak var fieldSurveyClassification: UILabel!
    
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var fieldSurveyDescription: UILabel!
    @IBOutlet weak var fieldSurveyImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       dateFormatter.dateStyle = .medium
            dateFormatter.timeStyle = .medium
        
        fieldSurveyImageView.image = fieldSurvey?.animal.image
        
        fieldSurveyClassification.text = fieldSurvey?.title
        
        fieldSurveyDescription.text = fieldSurvey?.description
        
        if let date = fieldSurvey?.date{
            dateLabel.text = dateFormatter.string(from: date)
        }else {
            dateLabel.text = ""
        }
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
