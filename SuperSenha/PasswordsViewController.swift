//
//  PasswordsViewController.swift
//  SuperSenha
//
//  Created by Luana Martinez de La Flor on 19/08/21.
//

import UIKit

class PasswordsViewController: UIViewController {

    
    @IBOutlet weak var tvPasswords: UITextView!
    
    var numberOfCharacters: Int = 10
    var numberOfPassWords: Int = 1
    var useLetters: Bool!
    var useNumbers: Bool!
    var useCapitalLetters: Bool!
    var useSpecialCharecters: Bool!
    
    var passawordGenerator : PasswordGenerate!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Total de Senhas: \(numberOfPassWords) "
        passawordGenerator = PasswordGenerate(numberOfCharacters: numberOfCharacters, useLetters: useLetters, useNumber: useNumbers, useCapitalLetters: useCapitalLetters, useSpecialCharacters: useSpecialCharecters)
        
      generatePasswords()

        // Do any additional setup after loading the view.
    }
    
    func generatePasswords(){
        tvPasswords.scrollRangeToVisible(NSRange(location: 0, length: 0))
        tvPasswords.text = " "
        let passwords = passawordGenerator.generate(total: numberOfPassWords)
        for password in passwords{
            tvPasswords.text.append(password + "\n\n")
        }
        
    }
    
    
    
    @IBAction func generate(_ sender: Any) {
        generatePasswords()
        
    }
    
 
}
