//
//  ViewController.swift
//  Purchases
//
//  Created by Rishat on 12.10.2020.
//  Copyright © 2020 Rishat Latypov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let stackView = UIStackView()
    let verticalStackView = UIStackView()
    let textField = UITextField()
    let button = UIButton()
    
    private var newView : UIView = {
        
        let view = UIView()
        
        view.backgroundColor = .red
        
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(newView)
        stackView.axis = .horizontal
        verticalStackView.axis = .horizontal
    }
    
    
    
    @IBAction func addPurchase(_ sender: Any){
        verticalStackView.addArrangedSubview(stackView)
        stackView.addArrangedSubview(textField)
        stackView.addArrangedSubview(button)
    }
    
    @IBAction func deleteParchase(_ sender: Any){
        stackView.removeArrangedSubview(textField)
        stackView.removeArrangedSubview(button)
    }


}

