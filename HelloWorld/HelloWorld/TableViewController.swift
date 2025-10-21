
//  TableViewController.swift
//  HelloWorld
//
//  Created by Student on 14/10/25.
//

import UIKit

// MARK: - Modelo de datos
struct ShopItem {
    var name: String
    var quantity: Int
}

// MARK: - Protocolo del delegate
protocol AddShopItemDelegate: AnyObject {
    func addShopItem(_ item: ShopItem)
}

// MARK: - TableViewController
class TableViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    var addBarBt: UIBarButtonItem?
    
    var shopItems: [ShopItem] = [
        ShopItem(name: "Pasta", quantity: 2),
        ShopItem(name: "Bread", quantity: 1),
        ShopItem(name: "Sugar", quantity: 0),
        ShopItem(name: "Coffee", quantity: 3)
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Shop List"
        
        tableView.dataSource = self
        tableView.delegate = self
        
        addBarBt = UIBarButtonItem(title: "Add",
                                   style: .plain,
                                   target: self,
                                   action: #selector(addBarBtAction))
        self.navigationItem.rightBarButtonItem = addBarBt
    }
    
    @objc func addBarBtAction() {
        performSegue(withIdentifier: "AddShopItemSegue", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "AddShopItemSegue" {
            let addVC = segue.destination as! AddShopItemViewController
            addVC.delegate = self
        }
    }
}

// MARK: - UITableView
extension TableViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return shopItems.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        let item = shopItems[indexPath.row]
        if item.quantity > 0 {
            cell.textLabel?.text = "\(item.name) (\(item.quantity))"
        } else {
            cell.textLabel?.text = item.name
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        print("Touched: \(shopItems[indexPath.row].name)")
    }
}

// MARK: - Delegate
extension TableViewController: AddShopItemDelegate {
    func addShopItem(_ item: ShopItem) {
        shopItems.append(item)
        tableView.reloadData()
    }
}

