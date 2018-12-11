//
//  AddCharacterViewController.swift
//  Arcana
//
//  Created by Reid, Jon Carl on 11/18/18.
//  Copyright © 2018 Reid, Jon Carl. All rights reserved.
//

import UIKit
import CoreData

class AddCharacterViewController: UIViewController, UITextFieldDelegate, UINavigationControllerDelegate,UITableViewDataSource, UITableViewDelegate{
    
    
    var numCharacters: Int? = nil
    var character: Character? = nil
    var skillArray = [Skill]()
    
    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    
    @IBOutlet var nameField: UITextField!
    @IBOutlet var levelField: UITextField!
    @IBOutlet var healthField: UITextField!
    @IBOutlet var bonusField: UITextField!
    @IBOutlet var strengthField: UITextField!
    @IBOutlet var dexterityField: UITextField!
    @IBOutlet var constitutionField: UITextField!
    @IBOutlet var intelligenceField: UITextField!
    @IBOutlet var wisdomField: UITextField!
    @IBOutlet var charismaField: UITextField!
    
    @IBOutlet var tableView: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0{
            return skillArray.count
        }
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "NewProfficencyCell") as! NewProfficencyCell
        let skill = skillArray[indexPath.row]
        cell.update(skill: skill)
        cell.showsReorderControl = true
        return cell
    }
    
    func loadInfo(){
        if let character = character{
            nameField.text = character.name!
            levelField.text = "\(character.level)"
            healthField.text = "\(character.health)"
            bonusField.text = "\(character.bonus)"
            strengthField.text = "\(character.strength)"
            dexterityField.text = "\(character.dexterity)"
            constitutionField.text = "\(character.constituiton)"
            intelligenceField.text = "\(character.intelligence)"
            wisdomField.text = "\(character.wisdom)"
            charismaField.text = "\(character.charisma)"
            
            let request: NSFetchRequest<Skill> = Skill.fetchRequest()
            let characterPredicate = NSPredicate(format: "parentCategory.name MATCHES %@", character.name!)
            request.predicate = characterPredicate
            
            do{
                skillArray = try context.fetch(request)
            } catch {
                print("Error getting skills")
            }
        } else {
            var skill = Skill(context: self.context)
            skill.name = "Strength Save"
            skill.value = 0
            skillArray.append(skill)
            skill.name = "Dexterity Save"
            skillArray.append(skill)
            skill.name = "Constitution Save"
            skillArray.append(skill)
            skill.name = "Intelligence Save"
            skillArray.append(skill)
            skill.name = "Wisdom Save"
            skillArray.append(skill)
            skill.name = "Charisma Save"
            skillArray.append(skill)
            skill.name = "Acrobatics"
            skillArray.append(skill)
            skill.name = "Animal Handling"
            skillArray.append(skill)
            skill.name = "Arcana"
            skillArray.append(skill)
            skill.name = "Athletics"
            skillArray.append(skill)
            skill.name = "Deception"
            skillArray.append(skill)
            skill.name = "History"
            skillArray.append(skill)
            skill.name = "Insight"
            skillArray.append(skill)
            skill.name = "Intimidation"
            skillArray.append(skill)
            skill.name = "Intimidation"
            skillArray.append(skill)
            skill.name = "Investigation"
            skillArray.append(skill)
            skill.name = "Medicine"
            skillArray.append(skill)
            skill.name = "Nature"
            skillArray.append(skill)
            skill.name = "Perception"
            skillArray.append(skill)
            skill.name = "Performance"
            skillArray.append(skill)
            skill.name = "Persuasion"
            skillArray.append(skill)
            skill.name = "Religion"
            skillArray.append(skill)
            skill.name = "Sleight of Hand"
            skillArray.append(skill)
            skill.name = "Stealth"
            skillArray.append(skill)
            skill.name = "Survival"
            skillArray.append(skill)
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let identifier = segue.identifier{
            if identifier == "SaveUnwindSegue"{
                
            }
        }
    }


    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool{
        textField.resignFirstResponder()
        return true
    }
    
    /*  This action allows the keyboard to vanish if the user presses in empty space. */
    
    @IBAction func dismissKeyboard(_ sender: UITapGestureRecognizer){
        
    }
    
}
