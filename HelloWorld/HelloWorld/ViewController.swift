//
//  ViewController.swift
//  HelloWorld
//
//  Created by Student on 30/9/25.
//

import UIKit

class ViewController: UIViewController {
    
    let BirthdaySegue = "ShowBirthdaySegue"
    let WorldSegue = "ShowWorldSegue"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.title = "Hello World"
        
        
    }
    
    @IBAction func BirthdayClicked(_ sender: UIButton) {
        self.performSegue(withIdentifier: BirthdaySegue, sender: self)
    }
    @IBAction func helloWorldClicked(_ sender: UIButton) {
        self.performSegue(withIdentifier: WorldSegue, sender: self)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == WorldSegue {
            let destinationVC = segue.destination as! SecondViewController
            
        }
    }


}

