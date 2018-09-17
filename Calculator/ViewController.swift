//
//  ViewController.swift
//  Calculator
//
//  Created by Tarang Srivastava on 9/7/18.      
//  Copyright © 2018 Tarang Srivastava. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // This did not need to be initalized, because
    // optionals are special and defaulted to `nil`
    // because of the ! it is implicitly unwrapped
    // would crash if display = nil
    @IBOutlet weak var display: UILabel!
    
    // This needs to be initialized
    var userIsInTheMiddleOfTyping = false
    
    @IBAction func touchDigit(_ sender: UIButton) {
        let digit = sender.currentTitle!
        if userIsInTheMiddleOfTyping {
            let textCurrentlyInDisplay = display.text!
            display.text = textCurrentlyInDisplay + digit
        } else {
            display.text = digit
        }
        userIsInTheMiddleOfTyping = true
    }
    
    @IBAction func performOperation(_ sender: UIButton) {
        userIsInTheMiddleOfTyping = false
        if let mathematicalSymbol = sender.currentTitle {
            if mathematicalSymbol == "π" {
                display.text = String(Double.pi)
            }
        }
    }
}

