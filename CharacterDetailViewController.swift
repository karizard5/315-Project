//
//  CharacterDetailViewController.swift
//  Arcana
//
//  Created by Reid, Jon Carl on 11/18/18.
//  Copyright © 2018 Reid, Jon Carl. All rights reserved.
//

import UIKit
import CoreData

class CharacterDetailViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    

    var character: Character? = nil
    var characterCount: Int? = nil
    var characterIndex: Int? = nil
    var skillArray = [Skill]()
    
    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    @IBOutlet var tableView: UITableView!
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
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0{
            return skillArray.count
        }
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ProfficencyCell", for: indexPath) as! ProfficencyCell
        let skill = skillArray[indexPath.row]
        cell.update(skill: skill)
        cell.showsReorderControl = true
        return cell
    }
    
    func displayCharacter(_ character: Character?){
        if let character = character, let characterCount = characterCount, let characterIndex = characterIndex{
            let correctedCharacterIndex = characterIndex + 1
            guard let characterName = character.name else {return}
            
            nameLabel.text = characterName
            levelLabel.text = "Level: \(character.level)"
            healthLabel.text = "Health: \(character.health)"
            charismaLabel.text = "Charisma: \(character.charisma)"
            constitutionLabel.text = "Constitution: \(character.constituiton)"
            intelligenceLabel.text = "Intelligence: \(character.intelligence)"
            strengthLabel.text = "Strength \(character.strength)"
            wisdomLabel.text = "Wisdom \(character.wisdom)"
            dexterityLabel.text = "Dexterity \(character.dexterity)"
            
            loadSkills()
            
            characterNumberLabel.text = "Character \(correctedCharacterIndex) of \(characterCount)"
        }
    }
    
    func loadSkills(){
        let request: NSFetchRequest<Skill> = Skill.fetchRequest()
        let characterPredicate = NSPredicate(format: "characterProficiency.name MATCHES %@", character!.name!)
        request.predicate = characterPredicate
        
        do{
            skillArray = try context.fetch(request)
        } catch {
            print("Error getting skills")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        displayCharacter(character)
        // Do any additional setup after loading the view.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let idenifier = segue.identifier{
            if idenifier == "DiceSegue"{
                if let rollSceneVC = segue.destination as? RollSceneController{
                    if let selectedIndexPath = tableView.indexPathForSelectedRow{
                        let skill = skillArray[selectedIndexPath.row]
                        rollSceneVC.skill = skill
                    }
                }
            }
        }
        
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    

}
