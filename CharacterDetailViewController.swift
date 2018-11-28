//
//  CharacterDetailViewController.swift
//  Arcana
//
//  Created by Reid, Jon Carl on 11/18/18.
//  Copyright © 2018 Reid, Jon Carl. All rights reserved.
//

import UIKit

class CharacterDetailViewController: UIViewController {

    var character: Character? = nil
    var characterCount: Int? = nil
    var characterIndex: Int? = nil
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var levelLabel: UILabel!
    @IBOutlet var healthLabel: UILabel!
    @IBOutlet var charismaLabel: UILabel!
    @IBOutlet var constitutionLabel: UILabel!
    @IBOutlet var intelligenceLabel: UILabel!
    @IBOutlet var strengthLabel: UILabel!
    @IBOutlet var wisdomLabel: UILabel!
    @IBOutlet var dexterityLabel: UILabel!
    @IBOutlet var characterNumberLabel: UILabel!
    
    func displayCharacter(_ character: Character?){
        if let character = character, let characterCount = characterCount, let characterIndex = characterIndex{
            let correctedCharacterIndex = characterIndex + 1
            guard let characterName = character.name else {return}
            
            nameLabel.text = characterName
            levelLabel.text = "\(character.level)"
            healthLabel.text = "\(character.health)"
            charismaLabel.text = "\(character.charisma)"
            constitutionLabel.text = "\(character.constituiton)"
            intelligenceLabel.text = "\(character.intelligence)"
            strengthLabel.text = "\(character.strength)"
            wisdomLabel.text = "\(character.wisdom)"
            dexterityLabel.text = "\(character.dexterity)"
            
            
            characterNumberLabel.text = "Character \(correctedCharacterIndex) of \(characterCount)"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        displayCharacter(character)
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
