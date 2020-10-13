//
//  ViewController.swift
//  FirstTest
//
//  Created by Никита Ляпустин on 12.10.2020.
//  Copyright © 2020 Pasandep. All rights reserved.
//

import UIKit

enum Action {
    case plus
    case minus
    case multiply
    case divide
}

class ViewController: UIViewController {

    @IBOutlet var calculatorDisplayLabel: UILabel!
    
    var firstDigit : Int? = nil
    var secondDigit : Int? = nil
    var action : Action!
    var actionString : String!
    
    @IBAction func digitButtonTapped(_ sender: UIButton) {
        if action == nil {
            if firstDigit != nil {
                firstDigit = firstDigit! * 10 + sender.tag
                calculatorDisplayLabel.text = "\(firstDigit!)"
            } else {
                firstDigit = sender.tag
                calculatorDisplayLabel.text = "\(firstDigit!)"
            }
        } else {
            if secondDigit != nil {
                secondDigit = secondDigit! * 10 + sender.tag
                calculatorDisplayLabel.text = "\(calculatorDisplayLabel.text!)\(sender.tag)"
            } else {
                secondDigit = sender.tag
                calculatorDisplayLabel.text = "\(calculatorDisplayLabel.text!) \(secondDigit!)"
            }
        }
    }
    
    /*
     tags:
        0 - plus
        1 - minus
        2 - multiply
        3 - divide
     */
    @IBAction func actionButtonTapped(_ sender: UIButton) {
        switch sender.tag {
        case 0:
            action = .plus
            actionString = "+"
        case 1:
            action = .minus
            actionString = "-"
        case 2:
            action = .multiply
            actionString = "*"
        case 3:
            action = .divide
            actionString = "/"
        default:
            print("Это никогда не выведится")
        }
        
        if let displayText = calculatorDisplayLabel.text {
            calculatorDisplayLabel.text = "\(displayText) \(actionString!)"
        }
    }
    
    
    @IBAction func equalButtonTapped(_ sender: Any) {
        if let fd = firstDigit, let sd = secondDigit {
            var answer: Int? = nil
            switch action {
            case .plus:
                answer = fd + sd
            case .minus:
                answer = fd - sd
            case .multiply:
                answer = fd * sd
            case .divide:
                if secondDigit == 0 {
                    calculatorDisplayLabel.text = "Math err"
                    clearAllValues()
                    return
                }
                answer = fd / sd
            default:
                print("Это тоже не выведится")
            }
            calculatorDisplayLabel.text = "\(answer!)"
            clearAllValues()
            firstDigit = answer
        }
    }
    
    
    @IBAction func clearButtonTapped(_ sender: Any) {
        clearAllValues()
        calculatorDisplayLabel.text = ""
    }
    
    private func clearAllValues() {
        firstDigit = nil
        secondDigit = nil
        action = nil
        actionString = nil
    }
}

