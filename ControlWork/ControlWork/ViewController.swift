//
//  ViewController.swift
//  ControlWork
//
//  Created by Ruslan Khanov on 12.10.2020.
//  Copyright © 2020 Ruslan Khanov. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var purchaseListStackView: UIStackView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        /*
        let purchaseNameTextField = UITextField()
        purchaseNameTextField.placeholder = "Enter text here"
        purchaseNameTextField.font = UIFont.systemFont(ofSize: 15)
        purchaseNameTextField.borderStyle = UITextField.BorderStyle.roundedRect
        purchaseNameTextField.autocorrectionType = UITextAutocorrectionType.no
        purchaseNameTextField.keyboardType = UIKeyboardType.default
        purchaseNameTextField.returnKeyType = UIReturnKeyType.done
        purchaseNameTextField.clearButtonMode = UITextField.ViewMode.whileEditing
        purchaseNameTextField.contentVerticalAlignment = UIControl.ContentVerticalAlignment.center
        purchaseNameTextField.delegate = self
        purchaseNameTextField.translatesAutoresizingMaskIntoConstraints = false
        
        let deleteButton = UIButton()
        deleteButton.setTitle("Delete", for: .normal)
        deleteButton.setTitleColor(.purple, for: .normal)
        deleteButton.addTarget(self, action: #selector(delete), for: .touchUpInside)
        //deleteButton.translatesAutoresizingMaskIntoConstraints = false
        
        let purchaseStackView = UIStackView()
        purchaseStackView.axis = .horizontal
        purchaseStackView.alignment = .center
        purchaseStackView.spacing = 2
        purchaseStackView.addArrangedSubview(purchaseNameTextField)
        purchaseStackView.addArrangedSubview(deleteButton)
        
        self.view.addSubview(purchaseStackView)
        purchaseStackView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            purchaseNameTextField.widthAnchor.constraint(equalToConstant: 150.0),
            
            purchaseStackView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -50),
            purchaseStackView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 200),
            purchaseStackView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -200),
            purchaseStackView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 50)
        ])
         */
        
    }
    
    @objc private func deletePurchase(_ button: UIButton) {
        button.removeFromSuperview()
    }
    
    @IBAction func addPurchase() {
        let purchaseNameTextField = UITextField()
        purchaseNameTextField.placeholder = "Enter text here"
        purchaseNameTextField.font = UIFont.systemFont(ofSize: 15)
        purchaseNameTextField.borderStyle = UITextField.BorderStyle.roundedRect
        purchaseNameTextField.autocorrectionType = UITextAutocorrectionType.no
        purchaseNameTextField.keyboardType = UIKeyboardType.default
        purchaseNameTextField.returnKeyType = UIReturnKeyType.done
        purchaseNameTextField.clearButtonMode = UITextField.ViewMode.whileEditing
        purchaseNameTextField.contentVerticalAlignment = UIControl.ContentVerticalAlignment.center
        purchaseNameTextField.delegate = self
        purchaseNameTextField.translatesAutoresizingMaskIntoConstraints = false
        
        let deleteButton = UIButton()
        deleteButton.setTitle("Delete", for: .normal)
        deleteButton.setTitleColor(.red, for: .normal)
        deleteButton.addTarget(self, action: #selector(delete), for: .touchUpInside)
        deleteButton.translatesAutoresizingMaskIntoConstraints = false
        
        let purchaseStackView = UIStackView()
        purchaseStackView.axis = .horizontal
        purchaseStackView.alignment = .center
        purchaseStackView.spacing = 10
        purchaseStackView.addArrangedSubview(purchaseNameTextField)
        purchaseStackView.addArrangedSubview(deleteButton)
        
        NSLayoutConstraint.activate([
        purchaseNameTextField.widthAnchor.constraint(equalToConstant: 150.0)
        ])
    
        
        purchaseListStackView.addArrangedSubview(purchaseStackView)
    }


}

