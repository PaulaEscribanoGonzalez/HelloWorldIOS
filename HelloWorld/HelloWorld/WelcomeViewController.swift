//
//  WelcomeViewController.swift
//  HelloWorld
//
//  Created by Student on 14/10/25.
//

import UIKit

class WelcomeViewController: UIViewController {

    let shopList
    
    @IBOutlet weak var table: UITableView!
    @IBOutlet weak var labelWelcome: UILabel!
    
    var username : String? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        labelWelcome.text = "Hello Euneiz! Welcome to my app!"
        
        self.title = "Second View"
        
        self.tableView dataSource = self
        self.tableView delegate = self
        
        extension WelcomeViewController: UITableViewDataSource, UITableViewDelegate {
            func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
                return self.shopList.count
            }
            
            func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
                let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
                cell.textLabel?.text = self.shopList[indexPath.row]
                return cell
            }
            
        }
        
        print("\(username ?? "No username")")
    }
    

}
