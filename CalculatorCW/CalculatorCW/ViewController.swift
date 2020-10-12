//
//  ViewController.swift
//  CalculatorCW
//
//  Created by Montypass on 12.10.2020.
//

import UIKit

func add(a: Int, b: Int) -> Int {
    let result = a + b
    return result
}
func sub(a: Int, b: Int) -> Int {
    let result = a - b
    return result
}
func mult(a: Int, b: Int) -> Int {
    let result = a * b
    return result
}
func div(a: Int, b: Int) -> Int {
    let result = a / b
    return result
}

typealias Binoperation = (Int, Int) -> Int
let ops: [String: Binoperation] = [ "+" : add, "-" : sub, "*" : mult, "/" : div ]

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    var value: Int = 0
    var userInput = ""
    var numbers: [Int] = []
    var operations: [String] = []
    
    @IBOutlet var textLabel: UILabel!
    
    @IBOutlet var button1: UIButton!
    @IBOutlet var button2: UIButton!
    @IBOutlet var button3: UIButton!
    @IBOutlet var button4: UIButton!
    @IBOutlet var button5: UIButton!
    @IBOutlet var button6: UIButton!
    @IBOutlet var button7: UIButton!
    @IBOutlet var button8: UIButton!
    @IBOutlet var button9: UIButton!
    @IBOutlet var button0: UIButton!
    
    @IBOutlet var buttonClear: UIButton!
    @IBOutlet var buttonSum: UIButton!
    @IBOutlet var buttonMinus: UIButton!
    @IBOutlet var buttonMult: UIButton!
    @IBOutlet var buttonDivide: UIButton!
    @IBOutlet var buttonResult: UIButton!
    
    func doMath(newOp: String) {
        if userInput != "" && !numbers.isEmpty {
            let stackOp = operations.last
            if !((stackOp == "+" || stackOp == "-") && (newOp == "*" || newOp == "/")) {
                let oper = ops[operations.removeLast()]
                value = oper!(numbers.removeLast(), value)
                doEquals()
            }
        }
        operations.append(newOp)
        numbers.append(value)
        userInput = ""
        updateDisplay()
        
    }
    
    func updateDisplay() {
        let iAcc = value
        if value - iAcc == 0 {
            textLabel.text = "\(value)"
        } else {
            textLabel.text = "\(value)"
        }
    }
    
    func doEquals() {
        if userInput == "" {
            return
        }
        if !numbers.isEmpty {
            let oper = ops[operations.last!]
            value = oper!(numbers.removeLast(), value)
            if !operations.isEmpty {
                doEquals()
            }
        }
        updateDisplay()
        userInput = ""
        
    }
    
    
    
    @IBAction func clearLabel(_ sender: Any) {
        textLabel.text = "0"
    }
    
    func handleInput(str: String) {
        
        userInput += str
        
    }
    
    @IBAction func button1Press(_ sender: Any) {
        handleInput(str: "1")
        
    }
    
    @IBAction func button2Press(_ sender: Any) {
        
        handleInput(str: "2")
        
    }
    
    @IBAction func button3Press(_ sender: Any) {
        handleInput(str: "3")
    }
    @IBAction func button4Press(_ sender: Any) {
        handleInput(str: "4")
    }
    
    
    @IBAction func button5Press(_ sender: Any) {
        
        handleInput(str: "5")
    }
    
    @IBAction func button6Press(_ sender: Any) {
        handleInput(str: "6")
    }
    
    @IBAction func button7Press(_ sender: Any) {
        handleInput(str: "7")
    }
    
    
    @IBAction func button8Press(_ sender: Any) {
        handleInput(str: "8")
    }
    
    @IBAction func button9Press(_ sender: Any) {
        handleInput(str: "9")
    }
    
    @IBAction func button0Press(_ sender: Any) {
        handleInput(str: "0")
    }
    
    @IBAction func buttonPlusPress(_ sender: Any) {
        doMath(newOp: "+")
    }
    
    @IBAction func buttonMinusPress(_ sender: Any) {
        doMath(newOp: "-")
    }
    @IBAction func buttonMultPress(_ sender: Any) {
        doMath(newOp: "*")
    }
    @IBAction func buttonDividePress(_ sender: Any) {
        doMath(newOp: "/")
    }
    @IBAction func buttonResultPress(_ sender: Any) {
        doEquals()
    }
}

