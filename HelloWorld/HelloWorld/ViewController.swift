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
    
    @IBOutlet weak var labelBirthday: UILabel!
    @IBOutlet weak var labelWish: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.title = "Hello World"
        
        labelBirthday.text = "Happy Birthday Paula!"
        labelWish.text = "I wish you the best"
        
        
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
            destinationVC.username = "Paula"
        }
    }


}

