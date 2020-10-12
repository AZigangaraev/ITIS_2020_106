//
//  ViewController.swift
//  ControlWork1
//
//  Created by itisioslab on 12.10.2020.
//

import UIKit

class ViewController: UIViewController {

private let titleLabel: UILabel = {

let label = UILabel()
label.text = "Список"
label.translatesAutoresizingMaskIntoConstraints = false
label.font = .systemFont(ofSize: 28, weight: .semibold)
label.textAlignment = .center
return label
}()
    
private let stackView: UIStackView = {
let view = UIStackView()
view.translatesAutoresizingMaskIntoConstraints = false
view.axis = .vertical
view.spacing = 3
return view
}()
    
private let addTextFieldButton: UIButton = {
let button = UIButton()
button.translatesAutoresizingMaskIntoConstraints = false
button.setTitle("Добавить", for: .normal)
button.backgroundColor = .black
return button
}()



override func viewDidLoad() {
super.viewDidLoad()

layout()
setupAddButtonsBehavior()
}

private func setupAddButtonsBehavior() {
addTextFieldButton.addTarget(self, action: #selector(addRow), for: .touchDown)
}

@objc private func addRow() {
let horizontalStack: UIStackView = {
let view = UIStackView()
view.axis = .horizontal
return view
}()



let textField: UITextField = {
let textField = UITextField()
textField.backgroundColor = .gray
textField.translatesAutoresizingMaskIntoConstraints = false
return textField
}()

stackView.addArrangedSubview(horizontalStack)
horizontalStack.addArrangedSubview(textField)
}

@objc private func deleteRow(_ button: UIView) {

button.superview?.isHidden = true
}



private func layout() {
view.addSubview(stackView)
view.addSubview(titleLabel)
view.addSubview(addTextFieldButton)
    


titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 5).isActive = true
titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 5).isActive = true
titleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -5).isActive = true

stackView.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 5).isActive = true
stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 5).isActive = true
stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -5).isActive = true

addTextFieldButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
addTextFieldButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant:-10).isActive = true
addTextFieldButton.widthAnchor.constraint(equalToConstant: 120)
  }
}
