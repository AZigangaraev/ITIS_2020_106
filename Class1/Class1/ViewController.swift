//
//  ViewController.swift
//  Class1
//
//  Created by Svetlana Safonova on 12.10.2020.
//  Copyright © 2020 Svetlana Safonova. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var numeral = ""
    var sign = ""
    var number1 = 0
    var answer = ""
    
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func plus(_ sender: Any) {
        sign = "+"
        if let text = label.text,
            let number = Int(text) {
            number1 = number
            label.text = "0"
        }
    }
    
    @IBAction func minus(_ sender: Any) {
        sign = "-"
        if let text = label.text,
            let number = Int(text) {
            number1 = number
            label.text = "0"
        }
    }
    
    
    @IBAction func multiply(_ sender: Any) {
        sign = "*"
        if let text = label.text,
            let number = Int(text) {
            number1 = number
            label.text = "0"
        }
    }
    
   
    @IBAction func divide(_ sender: Any) {
        sign = "/"
        if let text = label.text,
            let number = Int(text) {
            number1 = number
            label.text = "0"
        }
    }
    
    
    @IBAction func equal(_ sender: Any) {
        
        switch sign {
        case "+":
            if let text = label.text,
                let number = Int(text){
                print(number + number1)
                answer = String(number+number1)
            }
            label.text = answer
        case "-":
            if let text = label.text,
                let number = Int(text){
                print(number1 - number)
                answer = String(number1 - number)
            }
            label.text = answer
        case "*":
            if let text = label.text,
                let number = Int(text){
                print(number * number1)
                answer = String(number * number1)
            }
            label.text = answer
        case "/":
            if let text = label.text,
                let number = Int(text){
                print(number1 / number)
                answer = String(number1 / number)
            }
            label.text = answer
        default:
            label.text = "0"
        }
    }
    
    @IBAction func first(_ sender: Any) {
        first = !first
    }
    
    @IBAction func second(_ sender: Any) {
        secondNum = !secondNum
    }
    @IBAction func third(_ sender: Any) {
        thirdNum = !thirdNum
    }
    @IBAction func fourth(_ sender: Any) {
        forthNum = !forthNum
    }
    @IBAction func fifth(_ sender: Any) {
        fifthNum = !fifthNum
    }
    @IBAction func sixth(_ sender: Any) {
        sixthNum = !sixthNum
    }
    @IBAction func seventh(_ sender: Any) {
        seventhNum = !seventhNum
    }
    
    @IBAction func eigth(_ sender: Any) {
        eighthNum = !eighthNum
    }
    
    @IBAction func nineth(_ sender: Any) {
        ninethNum = !ninethNum
    }
    
    @IBAction func ac(_ sender: Any) {
        ac = !ac
    }
    
    @IBAction func zero(_ sender: Any) {
        zeroNum =  !zeroNum
    }
    
    var ac: Bool = true {
        willSet {
            if newValue{
                label.text = "0"
            }
            else {
                label.text = "0"
            }
        }
    }
    var first: Bool = true {
        willSet {
            if newValue {
                if label.text != nil && label.text != "0" {
                    numeral = label.text!
                    numeral += "1"
                    label.text = numeral
                }
                else {
                    label.text = "1"
                }
            }
            else {
                if label.text != nil && label.text != "0" {
                    numeral = label.text!
                    numeral += "1"
                    label.text = numeral
                }
                else {
                    label.text = "1"
                }
            }
        }
    }
    
    var secondNum: Bool = true {
           willSet {
               if newValue {
                   if label.text != nil && label.text != "0" {
                       numeral = label.text!
                       numeral += "2"
                       label.text = numeral
                   }
                   else {
                       label.text = "2"
                   }
               }
               else {
                if label.text != nil && label.text != "0" {
                    numeral = label.text!
                    numeral += "2"
                    label.text = numeral
                }
                else {
                    label.text = "2"
                }
            }
        }
    }
    
    var thirdNum: Bool = true {
           willSet {
               if newValue {
                   if label.text != nil && label.text != "0" {
                       numeral = label.text!
                       numeral += "3"
                       label.text = numeral
                   }
                   else {
                       label.text = "3"
                   }
               }
            else {
            if label.text != nil && label.text != "0" {
                numeral = label.text!
                numeral += "3"
                label.text = numeral
            }
            else {
                label.text = "3"
                }
            }
        }
    }
    
    var forthNum: Bool = true {
           willSet {
               if newValue {
                   if label.text != nil && label.text != "0" {
                       numeral = label.text!
                       numeral += "4"
                       label.text = numeral
                   }
                   else {
                       label.text = "4"
                   }
               }
            else {
            if label.text != nil && label.text != "0" {
                numeral = label.text!
                numeral += "4"
                label.text = numeral
            }
            else {
                label.text = "4"
                }
            }
        }
    }
    
    var fifthNum: Bool = true {
           willSet {
               if newValue {
                   if label.text != nil && label.text != "0" {
                       numeral = label.text!
                       numeral += "5"
                       label.text = numeral
                   }
                   else {
                       label.text = "5"
                   }
               }
            else {
            if label.text != nil && label.text != "0" {
                numeral = label.text!
                numeral += "5"
                label.text = numeral
            }
            else {
                label.text = "5"
                }
            }
        }
    }
    
    var sixthNum: Bool = true {
           willSet {
               if newValue {
                   if label.text != nil && label.text != "0" {
                       numeral = label.text!
                       numeral += "6"
                       label.text = numeral
                   }
                   else {
                       label.text = "6"
                   }
               }
            else {
            if label.text != nil && label.text != "0" {
                numeral = label.text!
                numeral += "6"
                label.text = numeral
            }
            else {
                label.text = "6"
                }
            }
        }
    }
    
    var seventhNum: Bool = true {
           willSet {
               if newValue {
                   if label.text != nil && label.text != "0" {
                       numeral = label.text!
                       numeral += "7"
                       label.text = numeral
                   }
                   else {
                       label.text = "7"
                   }
               }
            else {
            if label.text != nil && label.text != "0" {
                numeral = label.text!
                numeral += "7"
                label.text = numeral
            }
            else {
                label.text = "7"
                }
            }
        }
    }
    
    var eighthNum: Bool = true {
           willSet {
               if newValue {
                   if label.text != nil && label.text != "0" {
                       numeral = label.text!
                       numeral += "8"
                       label.text = numeral
                   }
                   else {
                       label.text = "8"
                   }
               }
            else {
            if label.text != nil && label.text != "0" {
                numeral = label.text!
                numeral += "8"
                label.text = numeral
            }
            else {
                label.text = "8"
                }
            }
        }
    }
    
    var ninethNum: Bool = true {
           willSet {
               if newValue {
                   if label.text != nil && label.text != "0" {
                       numeral = label.text!
                       numeral += "9"
                       label.text = numeral
                   }
                   else {
                       label.text = "9"
                   }
               }
            else {
            if label.text != nil && label.text != "0" {
                numeral = label.text!
                numeral += "9"
                label.text = numeral
            }
            else {
                label.text = "9"
                }
            }
        }
    }
    
    var zeroNum: Bool = true {
           willSet {
               if newValue {
                if label.text != nil && label.text != "0" {
                       numeral = label.text!
                       numeral += "0"
                       label.text = numeral
                   }
                   else {
                       label.text = "0"
                   }
               }
            else {
            if label.text != nil && label.text != "0" {
                numeral = label.text!
                numeral += "0"
                label.text = numeral
            }
            else {
                label.text = "0"
                }
            }
        }
    }

}

