//
//  ViewController.swift
//  CW_1
//
//  Created by Руслан Ахмадеев on 12.10.2020.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - views
    
    private let titleLabel: UILabel = {
        
        let label = UILabel()
        label.text = "Список покупок"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 28, weight: .semibold)
        label.textAlignment = .center
        
        return label
    }()
    
    private let addButton: UIButton = {
        
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Добавить", for: .normal)
        button.backgroundColor = .systemBlue
        
        return button
    }()
    
    private let verticalStackView: UIStackView = {
        let view = UIStackView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.axis = .vertical
        view.spacing = 3
        
        return view
    }()
    
    // MARK: - LifeCycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        layout()
        setupAddButtonsBehavior()
    }
    
    private func setupAddButtonsBehavior() {
        addButton.addTarget(self, action: #selector(addRow), for: .touchDown)
    }
    
    // MARK: - Row's actions
    
    @objc private func addRow() {
        
        let horizontalStack: UIStackView = {
            let view = UIStackView()
            view.axis = .horizontal
            return view
        }()
        
        let delButton: UIButton = {
            let button = UIButton()
            button.translatesAutoresizingMaskIntoConstraints = false
            button.setTitle("Удалить", for: .normal)
            button.backgroundColor = .systemBlue
            button.addTarget(self, action: #selector(deleteRow(_:)), for: .touchDown)
            return button
        }()
        
        let textField: UITextField = {
            
            let textField = UITextField()
            textField.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
            textField.translatesAutoresizingMaskIntoConstraints = false
            
            return textField
        }()
        
        verticalStackView.addArrangedSubview(horizontalStack)
        horizontalStack.addArrangedSubview(textField)
        horizontalStack.addArrangedSubview(delButton)
    }
    
    @objc private func deleteRow(_ button: UIView) {
        button.superview?.isHidden = true
    }
    
    // MARK: - Layout
    
    private func layout() {
        view.addSubview(verticalStackView)
        view.addSubview(titleLabel)
        view.addSubview(addButton)
        
        NSLayoutConstraint.activate([
            
            titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 8),
            titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8),
            titleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -8),
            
            verticalStackView.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 8),
            verticalStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8),
            verticalStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -8),
            
            addButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            addButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -8),
            addButton.widthAnchor.constraint(equalToConstant: 120)
        ])
    }
}

