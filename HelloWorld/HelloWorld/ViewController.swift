//
//  ViewController.swift
//  HelloWorld
//
//  Created by Student on 30/9/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelBirthday: UILabel!
    
    @IBOutlet weak var labelWish: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.title = "It's your birthday! :D"
        
        labelBirthday.text = "Happy Birthday Paula!"
        labelWish.text = "I wish you the best"
    }


}

