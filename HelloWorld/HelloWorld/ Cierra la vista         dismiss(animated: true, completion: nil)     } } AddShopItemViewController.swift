//
//  AddShopItemViewController.swift
//  HelloWorld
//
//  Created by Student on 14/10/25.
//

import UIKit

class AddShopItemViewController: UIViewController {
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var quantityTextField: UITextField!
    
    var delegate: AddShopItemDelegate?
    
    @IBAction func saveButtonTapped(_ sender: UIButton) {
        let name = nameTextField.text ?? ""
        let quantity = Int(quantityTextField.text ?? "0") ?? 0
        
        let newItem = ShopItem(name: name, quantity: quantity)
        delegate?.addShopItem(newItem)
        
        // Cierra la vista
        dismiss(animated: true, completion: nil)
    }
}

