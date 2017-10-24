//
//  TextTwistModel.swift
//  TextTwist
//
//  Created by C4Q  on 10/23/17.
//  Copyright © 2017 C4Q . All rights reserved.
//

import Foundation
import UIKit

enum guessResult {
    case correct
    case incorrect
}


class TextTwistModel {
    var randInfo = WordData.allInfo[Int(arc4random_uniform(3))]
    func guess(guessedWord: String) -> guessResult {
        if randInfo.words.contains(guessedWord) {
            return .correct
        } else {
            return .incorrect
        }
        
}
    func displayLetters () -> String {
        return randInfo.letters
        }
}
