//
//  PurschaseTableViewCell.swift
//  Kontrol
//
//  Created by Рустем on 12.10.2020.
//

import UIKit

class PurschaseTableViewCell: UITableViewCell {

    @IBOutlet weak var field: UITextField!
    @IBOutlet weak var butt: UIButton!
    
    var main: ViewController!
    
    var purchase = UserDefaults.standard.value(forKey: "cells") as! [String]?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }
    
    @IBAction func del(_ sender: Any) {
        if(field.text != ""){
            purchase?.append(field.text!)
            UserDefaults.standard.set(purchase, forKey: "cells")
        }
        main.refresh()
        print("GO")
    }
    
}
