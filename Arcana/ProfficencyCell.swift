//
//  ProfficencyCell.swift
//  Arcana
//
//  Created by Gianatassio, Dominic Kanyo on 12/4/18.
//  Copyright © 2018 Reid, Jon Carl. All rights reserved.
//

import UIKit

class ProfficencyCell: UITableViewCell {

    @IBOutlet var nameLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func update(skill: Skill) {
        nameLabel.text = "\(skill.name!)(\(skill.value))"
    }

}
