//
//  CheckTableViewCell.swift
//  FieldSurvey
//
//  Created by Keith Compton on 11/3/17.
//  Copyright © 2017 Keith Compton. All rights reserved.
//


import UIKit

class CheckTableViewCell: UITableViewCell {

    @IBOutlet weak var iconImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}
