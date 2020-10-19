//
//  ViewController.swift
//  Test
//
//  Created by Evelina on 12.10.2020.
//  Copyright © 2020 Evelina. All rights reserved.
//

import UIKit

class ViewController: UIViewController{
    
    @IBOutlet var shopingList: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = shopingList.dequeueReusableCell(withIdentifier: "shop")
        if cell == nil {
            cell = Purchase.createCell()
        }
        return cell!
    }
}

