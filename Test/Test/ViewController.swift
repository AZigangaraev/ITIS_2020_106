//
//  ViewController.swift
//  Test
//
//  Created by Robert Mukhtarov on 12.10.2020.
//

import UIKit

enum Action: String {
    case plus = "+", minus = "-", multiply = "*", divide = "/"
}

class ViewController: UIViewController {
    
    @IBOutlet private var displayLabel: UILabel!
    private var numbers: [Int]!
    private var currentNumber: Int!
    private var action: Action?
    private var result: Double?

    override func viewDidLoad() {
        super.viewDidLoad()
        reset()
        clearDisplay()
    }
    
    @IBAction private func digitPressed(_ sender: UIButton) {
        if result != nil {
            result = nil
            clearDisplay()
        }
        displayLabel.text!.append(sender.currentTitle!)
    }
    
    @IBAction private func actionButtonPressed(_ sender: UIButton) {
        numbers[0] = Int(displayLabel.text ?? "0")!
        action = Action(rawValue: sender.currentTitle!)
        clearDisplay()
    }
    
    @IBAction private func clearButtonPressed(_ sender: UIButton) {
        clearDisplay()
    }
    
    @IBAction func equalsButtonPressed(_ sender: UIButton) {
        numbers[1] = Int(displayLabel.text ?? "0")!
        var hasErrorOccurred = false
        result = 0.0
        guard let action = action else { return }
        switch (action) {
        case .plus:
            result = Double(numbers[0] + numbers[1])
        case .minus:
            result = Double(numbers[0] - numbers[1])
        case .multiply:
            result = Double(numbers[0] * numbers[1])
        case .divide:
            if numbers[1] != 0 {
                result = Double(numbers[0]) / Double(numbers[1])
            } else { hasErrorOccurred = true }
        }
        reset()
        guard !hasErrorOccurred, let result = result else {
            displayLabel.text = "Error"
            return
        }
        displayLabel.text = result.isInteger ? String(Int(result)) : String(result)
    }
    
    
    private func reset() {
        numbers = [0, 0]
        currentNumber = 0
    }
    
    private func clearDisplay() {
        displayLabel.text = ""
    }

}

// MARK: - Extensions

extension Double {
    var isInteger: Bool {
        let value = Int(self)
        return Double(value) == self
    }
}

