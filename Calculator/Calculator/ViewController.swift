//
//  ViewController.swift
//  Calculator
//
//  Created by Dima on 12.10.2020.
//  Copyright © 2020 Dima. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Result: UILabel!
    var still = false
    var first: Double = 0
    var second: Double = 0
    var sign: String = ""
    var current: Double
    {
        get{
            return Double(Result.text!)!
        }
        set
        {
            Result.text = "\(newValue)"
            still = false
        }
    }
    @IBAction func number(_ sender: UIButton) {
        
       
        
        let num = sender.currentTitle!
        if still{
        Result.text = Result.text! + num
    }else
        {Result.text  = num
            still = true
        }
    
    }
    
    
    @IBAction func functional(_ sender: UIButton) {
        sign  = sender.currentTitle!
        first = current
        still =  false
        
    }
    func operatoinwitnnumbers(operation: ( Double, Double) -> Double ){
        current = operation(first, second)
        still = false
    }
    
    @IBAction func End(_ sender: UIButton) {
        
        if still {
            second = current
        }
        switch sign {
        case "+":operatoinwitnnumbers{$0 + $1}
        case "-":operatoinwitnnumbers{$0 - $1}
        case "*":operatoinwitnnumbers{$0 * $1}
        case "/":operatoinwitnnumbers{$0 / $1}
        default : break
            
        }
    }
}

