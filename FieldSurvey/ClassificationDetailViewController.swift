//
//  ClassificationDetailViewController.swift
//  FieldSurvey
//
//  Created by Keith Compton on 11/3/17.
//  Copyright © 2017 Keith Compton. All rights reserved.
//


import UIKit

class ClassificationDetailViewController: UIViewController {
    var classific: title?
    
    var dateFormatteer = DateFormatter()
    
    @IBOutlet weak var animalIconImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
     @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var actualName: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dateFormatteer.dateStyle = .medium
        dateFormatteer.timeStyle = .medium
        
        self.title = "Observations"
        
        animalIconImageView.image = classific?.classification.image
        nameLabel.text = classific?.description
        actualName.text = classific?.title
        
        if let date = classific?.date {
            dateLabel.text = dateFormatteer.string(from: date)
        }
        else {
            dateLabel.text = ""
        }
     
    }
   
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }

}
