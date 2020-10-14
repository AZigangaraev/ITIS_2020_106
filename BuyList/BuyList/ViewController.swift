//
//  ViewController.swift
//  BuyList
//
//  Created by Булат Хабибуллин on 12.10.2020.
//  Copyright © 2020 Bulat Khabibullin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let stackView = UIStackView()
    let verticalStackView = UIStackView()
    let textField = UITextField()
    let button = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        stackView.axis = .horizontal
        stackView.alignment = .fill
        stackView.distribution = .fill
        stackView.spacing = 10.0
        verticalStackView.axis = .vertical
        verticalStackView.alignment = .leading
        verticalStackView.distribution = .fill
        self.view.addSubview(stackView)
        
    }

    @IBAction func addProduct (_ sender: Any) {
        verticalStackView.addArrangedSubview(stackView)
        stackView.addArrangedSubview(textField)
        stackView.addArrangedSubview(button)
    }
    
    @IBAction func deleteProduct(_ sender:Any) {
        stackView.removeFromSuperview()
    }
}

