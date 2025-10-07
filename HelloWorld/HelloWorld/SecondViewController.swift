//
//  SecondViewController.swift
//  HelloWorld
//
//  Created by Student on 7/10/25.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var labelHello: UILabel!
    
    var username : String? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        labelHello.text = "Hello, type your name below"
        
        self.title = "Second View"
        
        print("\(username ?? "No username")")
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
