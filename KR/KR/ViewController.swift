//
//  ViewController.swift
//  KR
//
//  Created by Олег Романов on 12.10.2020.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet private var resultLabel: UILabel!
    
    private var plusPressed = false
    private var subPressed = false
    private var multPressed = false
    private var divPressed = false
    private var isNull = false
    
    private var firstNumber = 0
    private var secondNumber = 0
    private var field = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    private func someNumberButtonClicked(number: Int) {
        if isNull {
            field = ""
            isNull = false
        }
        field += (String)(number)
        resultLabel.text = field
    }
    
    @IBAction private func number1Button(_ sender: Any) {
        someNumberButtonClicked(number: 1)
    }
    
    @IBAction private func number2Button(_ sender: Any) {
        someNumberButtonClicked(number: 2)
    }
    
    @IBAction private func number3Button(_ sender: Any) {
        someNumberButtonClicked(number: 3)
    }
    
    @IBAction private func number4Button(_ sender: Any) {
        someNumberButtonClicked(number: 4)
    }
    
    @IBAction private func number5Button(_ sender: Any) {
        someNumberButtonClicked(number: 5)
    }
    
    @IBAction private func number6Button(_ sender: Any) {
        someNumberButtonClicked(number: 6)
    }
    
    @IBAction private func number7Button(_ sender: Any) {
        someNumberButtonClicked(number: 7)
    }
    
    @IBAction private func number8Button(_ sender: Any) {
        someNumberButtonClicked(number: 8)
    }
    
    @IBAction private func number9Button(_ sender: Any) {
        someNumberButtonClicked(number: 9)
    }
    
    @IBAction private func number0Button(_ sender: Any) {
        someNumberButtonClicked(number: 0)
    }
    
    @IBAction private func plusButton(_ sender: Any) {
        firstNumber = (Int)(field) ?? 0
        plusPressed = true
        field = ""
    }
    
    @IBAction private func subButton(_ sender: Any) {
        firstNumber = (Int)(field) ?? 0
        subPressed = true
        field = ""
    }
    
    @IBAction private func multButton(_ sender: Any) {
        firstNumber = (Int)(field) ?? 0
        multPressed = true
        field = ""
    }
    
    @IBAction private func divButton(_ sender: Any) {
        firstNumber = (Int)(field) ?? 0
        divPressed = true
        field = ""
    }
    
    @IBAction private func equallyButton(_ sender: Any) {
        secondNumber = (Int)(field) ?? 0
        var result = ""
        switch true {
        case plusPressed:
            result = (String)(firstNumber + secondNumber)
            plusPressed = false
        case subPressed:
            result = (String)(firstNumber - secondNumber)
            subPressed = false
        case multPressed:
            result = (String)(firstNumber * secondNumber)
            multPressed = false
        case divPressed:
            if secondNumber != 0 {
                result = (String)(firstNumber / secondNumber)
            } else {
                result = "На ноль делить нельзя!"
                isNull = true
            }
            divPressed = false
        default:
            result = ""
        }
        resultLabel.text = result
        field = resultLabel.text ?? ""
    }
}

