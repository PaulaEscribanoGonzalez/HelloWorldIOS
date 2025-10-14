//
//  TableViewController.swift
//  HelloWorld
//
//  Created by Student on 14/10/25.
//

import UIKit

class TableViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    let ListSegue = "showListSegue"
    let shopItems = ["Pasta", "Bread", "Sugar", "Coffee"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Shop List"
        
        //self.tableView dataSource = self
        //self.tableView delegate = self
        
        
        // Do any additional setup after loading the view.
    }

}

extension TableViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.shopItems.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "Cell"
        
        guard let cell = UItableView, tableView(<#T##UITableView#>, didSelectRowAt: <#T##IndexPath#>)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.tableView.deselectRow(at: indexPath, animated: true)
        
        print("touched: \(self.shopItems[indexPath.row])")
    }
    
}
