//
//  AddCharacterViewController.swift
//  Arcana
//
//  Created by Reid, Jon Carl on 11/18/18.
//  Copyright © 2018 Reid, Jon Carl. All rights reserved.
//

import UIKit

class AddCharacterViewController: UIViewController, UITextFieldDelegate, UINavigationControllerDelegate {
    
    var numCharacters: Int? = nil
    
    
    @IBOutlet var characterNameLabel: UILabel!
    @IBOutlet var currentCharacterIndexAdditionLabel: UILabel!
    @IBOutlet var characterNameTextField: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let identifier = segue.identifier{
            if identifier == "SaveUnwindSegue"{
                if let characterName = characterNameLabel.text{
                    if characterName != ""{
                        if let characterTableVC = segue.destination as? MainMenuTableViewController{
                            characterTableVC.addCharacterToCoreData(characterName)
                        }
                    }
                }
            }
        }
    }


    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool{
        textField.resignFirstResponder()
        return true
    }
    
    /*  This action allows the keyboard to vanish if the user presses in empty space. */
    
    @IBAction func dismissKeyboard(_ sender: UITapGestureRecognizer){
        characterNameTextField.resignFirstResponder()
    }
    
}
