//
//  ViewController.swift
//  Kontrol
//
//  Created by Рустем on 12.10.2020.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return purchase.count + 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! PurschaseTableViewCell
        cell.main = self
        if(indexPath.item < purchase.count){
        cell.field.text = purchase[indexPath.item]
        } else {
            cell.butt.setTitle("Добавить", for: .normal)
        }
        
        return cell
    }
    

    @IBOutlet weak var purchaseTable: UITableView!
    
    var purchase1 = UserDefaults.standard.value(forKey: "cells") as! [String]?
    
    var purchase:[String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view.
        print("start")
        
        if(purchase1 != nil){
            purchase = purchase1!
        }
        
        purchaseTable.delegate = self
        purchaseTable.dataSource = self
        
        
        purchaseTable?.register(UINib(nibName: "PurschaseTableViewCell", bundle: nil), forCellReuseIdentifier: "cell")
        
        
    }
    
    func refresh() {
        print("-----------")
        viewDidLoad()
    }


}

