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
            character = Character(context: self.context)
            let skill1 = Skill(context: self.context)
            let skill2 = Skill(context: self.context)
            let skill3 = Skill(context: self.context)
            let skill4 = Skill(context: self.context)
            let skill5 = Skill(context: self.context)
            let skill6 = Skill(context: self.context)
            let skill7 = Skill(context: self.context)
            let skill8 = Skill(context: self.context)
            let skill9 = Skill(context: self.context)
            let skill10 = Skill(context: self.context)
            let skill11 = Skill(context: self.context)
            let skill12 = Skill(context: self.context)
            let skill13 = Skill(context: self.context)
            let skill14 = Skill(context: self.context)
            let skill15 = Skill(context: self.context)
            let skill16 = Skill(context: self.context)
            let skill17 = Skill(context: self.context)
            let skill18 = Skill(context: self.context)
            let skill19 = Skill(context: self.context)
            let skill20 = Skill(context: self.context)
            let skill21 = Skill(context: self.context)
            let skill22 = Skill(context: self.context)
            let skill23 = Skill(context: self.context)
            let skill24 = Skill(context: self.context)
            let skill25 = Skill(context: self.context)
            
            skill1.name = "Strength Save"
            skill1.value = 0
            skill1.characterProficiency = character
            skillArray.append(skill1)
            skill2.name = "Dexterity Save"
            skill2.value = 0
            skill2.characterProficiency = character
            skillArray.append(skill2)
            skill3.name = "Constitution Save"
            skill3.value = 0
            skill3.characterProficiency = character
            skillArray.append(skill3)
            skill4.name = "Intelligence Save"
            skill4.value = 0
            skill4.characterProficiency = character
            skillArray.append(skill4)
            skill5.name = "Wisdom Save"
            skill5.value = 0
            skill5.characterProficiency = character
            skillArray.append(skill5)
            skill6.name = "Charisma Save"
            skill6.value = 0
            skill6.characterProficiency = character
            skillArray.append(skill6)
            skill7.name = "Acrobatics"
            skill7.value = 0
            skill7.characterProficiency = character
            skillArray.append(skill7)
            skill8.name = "Animal Handling"
            skill8.value = 0
            skill8.characterProficiency = character
            skillArray.append(skill8)
            skill9.name = "Arcana"
            skill9.value = 0
            skill9.characterProficiency = character
            skillArray.append(skill9)
            skill10.value = 0
            skill10.characterProficiency = character
            skill10.name = "Athletics"
            skillArray.append(skill10)
            skill11.value = 0
            skill11.characterProficiency = character
            skill11.name = "Deception"
            skillArray.append(skill11)
            skill12.name = "History"
            skill12.value = 0
            skill12.characterProficiency = character
            skillArray.append(skill12)
            skill13.value = 0
            skill13.characterProficiency = character
            skill13.name = "Insight"
            skillArray.append(skill13)
            skill14.name = "Intimidation"
            skill14.value = 0
            skill14.characterProficiency = character
            skillArray.append(skill14)
            skill15.name = "Intimidation"
            skill15.value = 0
            skill15.characterProficiency = character
            skillArray.append(skill15)
            skill16.name = "Investigation"
            skill16.value = 0
            skill16.characterProficiency = character
            skillArray.append(skill16)
            skill17.name = "Medicine"
            skill17.value = 0
            skill17.characterProficiency = character
            skillArray.append(skill17)
            skill18.name = "Nature"
            skill18.value = 0
            skill18.characterProficiency = character
            skillArray.append(skill18)
            skill19.name = "Perception"
            skill19.value = 0
            skill19.characterProficiency = character
            skillArray.append(skill19)
            skill20.name = "Performance"
            skill20.value = 0
            skill20.characterProficiency = character
            skillArray.append(skill20)
            skill21.name = "Persuasion"
            skill21.value = 0
            skill21.characterProficiency = character
            skillArray.append(skill21)
            skill22.name = "Religion"
            skill22.value = 0
            skill22.characterProficiency = character
            skillArray.append(skill22)
            skill23.name = "Sleight of Hand"
            skill23.value = 0
            skill23.characterProficiency = character
            skillArray.append(skill23)
            skill24.name = "Stealth"
            skill24.value = 0
            skill24.characterProficiency = character
            skillArray.append(skill24)
            skill25.name = "Survival"
            skill25.value = 0
            skill25.characterProficiency = character
            skillArray.append(skill25)
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        loadInfo()
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
