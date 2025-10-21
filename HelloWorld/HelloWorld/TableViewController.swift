//
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
protocol AddShopItemDelegate {
    func addShopItem(_ item: ShopItem)
}

// MARK: - TableViewController
class TableViewController: UIViewController {

    // Conexión con la tabla en el Storyboard
    @IBOutlet weak var tableView: UITableView!
    
    // Botón para añadir ítems
    var addBarBt: UIBarButtonItem?
    
    // Lista de ítems
    var shopItems: [ShopItem] = [
        ShopItem(name: "Pasta", quantity: 2),
        ShopItem(name: "Bread", quantity: 1),
        ShopItem(name: "Sugar", quantity: 0),
        ShopItem(name: "Coffee", quantity: 3)
    ]
    
    // MARK: - Ciclo de vida
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Shop List"
        
        // Asignamos delegados
        tableView.dataSource = self
        tableView.delegate = self
        
        // Configuramos el botón "Add" en la barra superior
        addBarBt = UIBarButtonItem(title: "Add",
                                   style: .plain,
                                   target: self,
                                   action: #selector(addBarBtAction))
        self.navigationItem.rightBarButtonItem = addBarBt
    }
    
    // MARK: - Acción del botón
    @objc func addBarBtAction() {
        // Navega al controlador de añadir item
        performSegue(withIdentifier: "AddShopItemSegue", sender: self)
    }
    
    // MARK: - Configurar delegate al hacer segue
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "AddShopItemSegue" {
            let addVC = segue.destination as! AddShopItemViewController
            addVC.delegate = self
        }
    }
}

// MARK: - Extensiones de UITableView
extension TableViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return shopItems.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // La celda debe tener el identificador "Cell" en el Storyboard
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        let item = shopItems[indexPath.row]
        
        // Muestra la cantidad solo si es mayor que 0
        if item.quantity > 0 {
            cell.textLabel?.text = "\(item.name) (\(item.quantity))"
        } else {
            cell.textLabel?.text = item.name
        }
        
}
