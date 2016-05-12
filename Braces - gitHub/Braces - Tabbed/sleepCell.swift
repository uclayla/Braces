//
//  sleepCell.swift
//  Braces - Tabbed
//
//  Created by Ayla Walsh on 5/10/16.
//  Copyright © 2016 M-ITI. All rights reserved.
//

import UIKit

class sleepCell: UITableViewCell {
  
    @IBOutlet weak var sleepDates: UILabel!

    @IBOutlet weak var sleepHours: UILabel!
   
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
}

    
