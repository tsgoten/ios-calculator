//
//  ViewController.swift
//  Calculator
//
//  Created by Tarang Srivastava on 9/7/18.      
//  Copyright © 2018 Tarang Srivastava. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var display: UILabel?
    
    @IBAction func touchDigit(_ sender: UIButton) {
        let digit = sender.currentTitle!
        let textCurrentlyInDisplay = display!.text!
        display!.text = textCurrentlyInDisplay + digit
        
        // print("touched \(digit) digit")
    }
    
}

