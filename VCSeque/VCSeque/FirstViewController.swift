//
//  ViewController.swift
//  VCSeque
//
//  Created by Leon S. D'Angio on 4/20/18.
//  Copyright © 2018 com.dangioconnect. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, CanReceive {

    
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


    @IBAction func changeToBlue(_ sender: Any) {
        
        view.backgroundColor = UIColor.blue
        
    }
    @IBAction func sendButtonPressed(_ sender: Any) {
   
        performSegue(withIdentifier: "sendDataForwards", sender: self)
        
    }
        
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if segue.identifier == "sendDataForwards" {
                
            let secondVC = segue.destination as! SecondViewController
              
            secondVC.data = textField.text!
                
            secondVC.delegate = self
                
            }
            
        }
        
    func dataReceived(data: String) {
        label.text = data
    }
    
    
}

