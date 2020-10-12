//
//  ViewController.swift
//  NikitaSosyuk
//
//  Created by Nikita Sosyuk on 12.10.2020.
//  Copyright © 2020 Nikita Sosyuk. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var headerLabel: UILabel!
    @IBOutlet weak var addButton: UIButton!
    @IBOutlet weak var stackView: UIStackView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        headerLabel.text = "Заголовок"
        addButton.setTitle("Добавить", for: .normal)
        stackView.spacing = 10
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        stackView.alignment = .fill
        stackView.translatesAutoresizingMaskIntoConstraints = false
    }

    @IBAction func addButtonAction(_ sender: Any) {
        let textField = UITextField()
        
        textField.backgroundColor = .systemGray6
        textField.heightAnchor.constraint(equalToConstant: 25).isActive = true
        
        stackView.addArrangedSubview(textField)
    }
    
}

