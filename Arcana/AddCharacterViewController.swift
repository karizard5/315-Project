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
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool{
        textField.resignFirstResponder()
        return true
    }
    
    /*  This action allows the keyboard to vanish if the user presses in empty space. */
    
    @IBAction func dismissKeyboard(_ sender: UITapGestureRecognizer){
        characterNameTextField.resignFirstResponder()
    }
    
}
