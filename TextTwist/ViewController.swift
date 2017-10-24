//
//  ViewController.swift
//  TextTwist
//
//  Created by C4Q  on 10/23/17.
//  Copyright © 2017 C4Q . All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {


    
    @IBOutlet weak var availableLetters: UILabel!
    
    @IBOutlet weak var userInputGuess: UITextField!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBOutlet weak var letterWords3: UITextView!
    
    @IBOutlet weak var letterWords4: UITextView!
    
    @IBOutlet weak var letterWords5: UITextView!
   
    @IBOutlet weak var letterWords6: UITextView!
    
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        self.userInputGuess.delegate = self
        availableLetters.text = model.displayLetters()
    }

    var model = TextTwistModel()
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        guard let text = userInputGuess.text else {
            return false
        }
        
        switch model.guess(guessedWord: text) {
        case .correct :
            resultLabel.text = "Correct"
            
        case .incorrect :
            resultLabel.text = "Incorrect"
        }
        return true
        
    }
    

    
    
    
    
    
    
}

