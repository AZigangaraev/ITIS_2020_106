//
//  CalculatorController.swift
//  CalculatorTask
//
//  Created by Joseph on 12.10.2020.
//

import UIKit

class Calculator: ViewController {
    @IBOutlet var mainView: UIView!
    @IBOutlet weak var dataLabel: UILabel!

    var number1: Int? = nil

    var triggeredAction: String? = nil

    override func viewDidLoad() {
        super.viewDidLoad()

        setUpAction()
    }

    func setUpAction() {
        self.view.subviews.forEach {
            if $0 is UIStackView {
                // It is a stack view that contains a number of subviews = rows
                guard let superStackView = $0 as? UIStackView else {
                    print("View is not convertible to UIStackView")
                    return
                }

                superStackView.arrangedSubviews.forEach { stackView in
                    // "Childrens" of superStackView -> Rows in calc
                    guard let stackView = stackView as? UIStackView else {
                        print("Children View is not convertible to UIStackView")
                        return
                    }

                    stackView.arrangedSubviews.forEach { button in
                        guard let button = button as? UIButton else {
                            print("Some grandchild View is not convertible to UIButton")
                            return
                        }

                        button.addAction(
                            UIAction(
                                title: "Button Title",
                                handler: { handler in
                                    if let titleText = button.titleLabel?.text {
                                        if (titleText.isNumber) {
    
                                            if let _ = self.dataLabel.text {
                                                // There exists some number
                                                // Already Checked for optionals
                                                if (Int(self.dataLabel.text!) != 0) {
                                                    self.dataLabel.text = self.dataLabel.text! + titleText
                                                } else {
                                                    self.dataLabel.text = titleText
                                                }
                                            } else {
                                                // There is no number - impossible

                                                //TODO: - AKA CLEAR CASE
                                            }
                                        } else {
                                    
                                            self.triggerMathAction(action: titleText)
                                        }
                                    }
                                }), for: UIControl.Event.touchDown)

                    }
                }

            } else {
                //                print("Subview is not a \"super\" stack view", $0.description)
            }
        }
    }

    func triggerMathAction(action: String) {
        switch action {
        case "=":
            if let number1 = self.number1 {
                // Exists only one number
                if let number2 = Int(self.dataLabel.text ?? "") {
                    switch triggeredAction {
                    case "+":
                        self.dataLabel.text = String(number1 + number2)
                    case "-":
                        self.dataLabel.text = String(number1 - number2)
                    case "/":
                        if (number2 != 0) {
                            self.dataLabel.text = String(number1 / number2)
                        } else {
                            self.dataLabel.text = "0"
                        }
                    case "*":
                        self.dataLabel.text = String(number1 * number2)
                    default:
                        print("Uncrecognzied character")
                    }
                    
                    self.triggeredAction = nil
                    self.number1 = nil
                }
            }
        case "C":
            self.triggeredAction = nil
            self.number1 = nil
            self.dataLabel.text = "0"
        default:
            self.number1 = Int(dataLabel.text ?? "")
            self.dataLabel.text = "0"
            self.triggeredAction = action
        }
    }

}

extension String {
    var isNumber: Bool {
        return !isEmpty && rangeOfCharacter(from: CharacterSet.decimalDigits.inverted) == nil
    }
}
