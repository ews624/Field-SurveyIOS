//
//  FieldSurveyTableViewCell.swift
//  Field Survey
//
//  Created by Ethan Schutzenhofer on 7/18/18.
//  Copyright © 2018 Ethan Schutzenhofer. All rights reserved.
//

import UIKit

class FieldSurveyTableViewCell: UITableViewCell {

    
    @IBOutlet weak var fieldIconImageView: UIImageView!
    
    
    @IBOutlet weak var titleLabel: UILabel!
    
    
    @IBOutlet weak var dateLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
