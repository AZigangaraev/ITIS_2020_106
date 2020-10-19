//
//  ViewController.swift
//  Calculator
//
//  Created by Albert Ahmadiev on 12.10.2020.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var resultLabel: UILabel!
    private var firstValue = 0.0
    private var operation = 0
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultLabel.text = String(firstValue)
    }
    
    @IBAction func clearResult() {
        resultLabel.text = "0.0"
        firstValue = 0
    }
    
    @IBAction func tapNubmer(_ sender: UIButton){
        let tag = sender.tag
        
        if resultLabel.text == "0.0" {
            resultLabel.text = "\(tag)"
        }
        else if let text = resultLabel.text {
            resultLabel.text = "\(text)\(tag)"
        }
    }
    
    @IBAction func tapOption(_ sender: UIButton){
        let tag = sender.tag
        
        if let value = Double(resultLabel.text!){
            if firstValue == 0 {
                firstValue = value
                resultLabel.text = "0.0"
            }
        }
        
        if tag == 14 {
            var secondValue = 0.0
            if let value = Double(resultLabel.text!) {
                secondValue = value
            }
            
            switch operation {
            case 10:
                firstValue = firstValue + secondValue
                secondValue = 0
                resultLabel.text = "\(firstValue)"
                operation = 0
                firstValue = 0
                break
            case 11:
                firstValue = firstValue - secondValue
                secondValue = 0
                resultLabel.text = "\(firstValue)"
                operation = 0
                firstValue = 0
                break
            case 12:
                firstValue = firstValue * secondValue
                secondValue = 0
                resultLabel.text = "\(firstValue)"
                operation = 0
                firstValue = 0
                break
            case 13:
                if secondValue == 0 {
                    resultLabel.text = "Error /0"
                    break
                }
                firstValue = firstValue / secondValue
                secondValue = 0
                resultLabel.text = "\(firstValue)"
                operation = 0
                firstValue = 0
                break
            default:
                resultLabel.text = "Error"
            }
        }else {
            operation = tag
        }
    }
}


