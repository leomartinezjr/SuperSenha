//
//  PasswordGenerateModel.swift
//  SuperSenha
//
//  Created by Luana Martinez de La Flor on 19/08/21.
//

import Foundation


class PasswordGenerate{
    
    var numberOfCharacters: Int
    var useLetters: Bool
    var useNumber: Bool
    var useCapitalLetters: Bool
    var useSpecialCharacters: Bool
    
    var passwords: [String] = []
    
    private let letters = "abcdefghijklmnopqrstuvwxyz"
    private let specialCharecters = "!@#$%ˆ&*"
    private let numbers = "0123456789"
    
    init(numberOfCharacters: Int, useLetters: Bool,useNumber: Bool,useCapitalLetters: Bool,useSpecialCharacters: Bool) {
        
        var numchar = min(numberOfCharacters, 16)
        numchar = max(numchar, 1)
        
        
        
        self.numberOfCharacters = numchar
        self.useLetters = useLetters
        self.useNumber = useNumber
        self.useCapitalLetters = useCapitalLetters
        self.useSpecialCharacters = useSpecialCharacters
        
    }
    
    func generate(total: Int) -> [String]{
        
        passwords.removeAll()
        var universe: String = ""
        
        if useLetters {
            universe += letters
        }
        if useNumber {
            universe += numbers
        }
        if useSpecialCharacters{
            universe += specialCharecters
        }
        if useCapitalLetters {
            universe += letters.uppercased()
        }
        
        
        let universeArray = Array(universe)
        while passwords.count < total{
            var password = ""
            for _ in 1...numberOfCharacters{
                let index = Int (arc4random_uniform(UInt32(universeArray.count)))
                password += String(universeArray[index])
            }
            passwords.append(password)
        }
        
        
        
        
        return passwords
        
    }
    
    
    
    
    
}
