//
//  ViewController.swift
//  SuperSenha
//
//  Created by Luana Martinez de La Flor on 19/08/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tfTotalPassword: UITextField!
    @IBOutlet weak var tfNumberOfCharacters: UITextField!
    
    @IBOutlet weak var swLetters: UISwitch!
    @IBOutlet weak var swNumbers: UISwitch!
    @IBOutlet weak var swCapitalLetters: UISwitch!
    @IBOutlet weak var swSpecialCharacters: UISwitch!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let passwordViewController = segue.destination as! PasswordsViewController
        
        if let numberOfPasswords = Int(tfTotalPassword.text!){ // teste se o usuario colocou alguma coisa
            passwordViewController.numberOfPassWords = numberOfPasswords
        }
        
        if let numberOfCharacters = Int(tfNumberOfCharacters.text!){ // teste se o usuario colocou alguma coisa
            passwordViewController.numberOfCharacters = numberOfCharacters
        }
        
        passwordViewController.useLetters = swLetters.isOn
        passwordViewController.useNumbers = swNumbers.isOn
        passwordViewController.useCapitalLetters = swCapitalLetters.isOn
        passwordViewController.useSpecialCharecters = swSpecialCharacters.isOn
        view.endEditing(true) // faz teclado desapafrecer
        
        
    }

    
    
    

}

