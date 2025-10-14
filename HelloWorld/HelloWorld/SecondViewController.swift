//
//  SecondViewController.swift
//  HelloWorld
//
//  Created by Student on 7/10/25.
//

import UIKit

class SecondViewController: UIViewController {
    
    
    let WelcomeSegue = "ShowWelcomeSegue"
    @IBOutlet weak var labelHello: UILabel!
    @IBOutlet weak var username: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        labelHello.text = "Hello, type your name below"
        
        self.title = "Second View"
    }
    
    
    @IBAction func doneClicked(_ sender: UIButton) {
        
        if username.text!.isEmpty
        {
            let alert = UIAlertController(title: "Introduce tu nombre", message: "Introduce tu nombre, por favor", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
        
        else{
            self.performSegue(withIdentifier: WelcomeSegue, sender: self)
        }
        
        
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
