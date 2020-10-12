//
//  ViewController.swift
//  work
//
//  Created by Эвелина on 12.10.2020.
//  Copyright © 2020 Эвелина. All rights reserved.
//

import UIKit
class ViewController: UIViewController {
    @IBOutlet weak var mainLabel: UILabel!
    @IBOutlet weak var firstTextField: UITextField!
    @IBOutlet weak var secondTextField: UITextField!
    @IBOutlet weak var thirdTextField: UITextField!
    @IBOutlet weak var fourTextField: UITextField!
    @IBOutlet weak var firstDeleteBtn: UIButton!
    @IBOutlet weak var secondDeleteBtn: UIButton!
    @IBOutlet weak var thirdDeleteBtn: UIButton!
    @IBOutlet weak var fourDeleteBtn: UIButton!
    @IBOutlet weak var addNewFieldBtn: UIButton!
    @IBOutlet weak var addOne: UIView!
    @IBOutlet weak var addFour: UITextField!
    @IBOutlet weak var addThird: UITextField!
    @IBOutlet weak var addSecond: UITextField!
    var isTapped: Bool = false
    @IBAction func firstDeleteButton(_ sender: Any) {
    }
    
    @IBAction func secondDeleteButton(_ sender: Any) {
    }
    
    @IBAction func thirdDeleteButton(_ sender: Any) {
    }
    @IBAction func fourDeleteButton(_ sender: Any) {
    }
    @IBAction func addNewFieldButton(_ sender: Any) {
        var counter = 0
        if !isTapped{
            addOne.isHidden = 
            counter += 1
            if counter == 1 {
                addSecond.isHidden =
                counter += 1
            }
            if counter == 2{
                addThird.isHidden = false
                counter += 1
            }
            if counter == 3 {
                addFour.isHidden = false
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    var textFields: [UITextField] = []
    let textFieldSize = CGSize(width: 97, height: 30)
    let maxTextFields = 10
    func tappedButton(button: UIButton) {
        if textFields.count < maxTextFields && !isTapped {
            let y = CGFloat(textFields.count) * textFieldSize.height
            let textField = UITextField(frame: CGRect(origin: CGPoint(x: 0, y: y), size: textFieldSize))
            view.addSubview(textField)
            textFields.append(textField)
        }
    }
    func deleteTextField(button:UIButton){
        if !isTapped  {
            
        }
    }
}
    

