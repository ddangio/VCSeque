//
//  SecondViewController.swift
//  VCSeque
//
//  Created by Leon S. D'Angio on 4/20/18.
//  Copyright © 2018 com.dangioconnect. All rights reserved.
//

import UIKit

protocol CanReceive {
    
    func dataReceived(data: String)
    
}

class SecondViewController: UIViewController {
    
    var delegate : CanReceive?

    var data = ""
    
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.text = data
    }

    
    

    @IBAction func sendDataBack(_ sender: Any) {
        
        delegate?.dataReceived(data: textField.text!)
        dismiss(animated: false, completion: nil)
        
    }
  
    

}
