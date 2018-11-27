//
//  MainMenuTableViewCell.swift
//  Arcana
//
//  Created by Reid, Jon Carl on 11/18/18.
//  Copyright © 2018 Reid, Jon Carl. All rights reserved.
//

import UIKit

class MainMenuTableViewCell: UITableViewCell {
    
    @IBOutlet var characterNameLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func update(with character: Character){
        guard let characterName = character.name else {return}
        characterNameLabel.text = characterName
    }

}
