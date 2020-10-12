//
//  ViewController.swift
//  kontrol1
//
//  Created by Рустем on 12.10.2020.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var stack: UIStackView!
    
    var purchase1 = UserDefaults.standard.value(forKey: "cells") as! [String]?
    
    var purchase: [String] = []
    
    var buttons: [UIButton]!
    
    var views: [UIView]!
    
    var fieldForAdd: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
   
        
    }
    
    func forNew(){
        var name: UITextField!
        var but: UIButton!
        let view = UIView ()
        name = UITextField(frame: CGRect(x: 0, y: 0, width: 120.0, height: 24.0))
        but = UIButton(frame: CGRect(x: 120, y: 0, width: 80.0, height: 24.0))
        but.setTitle("Создать", for: .normal)
        but.addTarget(self, action: Selector(("buttonActionCreate:")), for: UIControl.Event.touchUpInside)
        view.addSubview(name)
        view.addSubview(but)
        buttons.append(but)
        
        views.append(view)
    }
    
    func create(){
    
//        удалить вью удаления для создания нового
        views[views.count - 1].isHidden = true
        
        
        var name: UITextField!
        var but: UIButton!
        let view = UIView ()
        name = UITextField(frame: CGRect(x: 0, y: 0, width: 120.0, height: 24.0))
        name.text = fieldForAdd.text
        but = UIButton(frame: CGRect(x: 120, y: 0, width: 80.0, height: 24.0))
        but.addTarget(self, action: Selector(("buttonAction:")), for: UIControl.Event.touchUpInside)
        buttons.append(but)
        
        view.addSubview(name)
        view.addSubview(but)
        
        views.append(view)
        
        forNew()
        
        
        
        
//        view.axis = .horizontal
//        view.distribution = .equalSpacing
//        view.alignment = .center
//        view.spacing = 10.0


        self.stack.addSubview(view)

        
    }
    
    @objc func buttonAction(sender: UIButton!) {
        
        let number = buttons.firstIndex(of: sender)!
        views[number].isHidden = true
        depose(number: number)
        
    }
    
    func depose(number: Int){
        for i in number...views.count-1 {
            views[i-1] = views[i]
        }
    }
    
    @objc func buttonActionCreate(sender: UIButton!) {
        if(fieldForAdd.text != ""){
        create()
        }
        
    }


}

