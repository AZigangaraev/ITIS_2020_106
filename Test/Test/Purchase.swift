//
//  purchase.swift
//  Test
//
//  Created by Evelina on 12.10.2020.
//  Copyright © 2020 Evelina. All rights reserved.
//
import UIKit

class Purchase: UIView{
    
    @IBOutlet var name: UILabel!
    @IBOutlet var deleteButton: UIButton!
    @IBOutlet var descriptionTextField: UITextField!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    @IBAction func deleteButton(_ sender: Any) {
        
    }
    class func createCell()-> Purchase?{
        let nib = UINib(nibName: "Purchase", bundle: nil)
        let cell = nib.instantiate(withOwner: self, options: nil).last as? Purchase
        return cell
    }
    
    func commonInit(name:String,description:String){
        self.name.text = name;
        self.descriptionTextField.text = description;
    }
}
