//
//  WelcomeViewController.swift
//  HelloWorld
//
//  Created by Student on 14/10/25.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet weak var labelWelcome: UILabel!
    
    var username : String? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        labelWelcome.text = "Hello Euneiz! Welcome to my app!"
        
        self.title = "Second View"
        
        
    
    }
    

}
