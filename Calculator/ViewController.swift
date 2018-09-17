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
    @IBOutlet private weak var display: UILabel!
    
    // This needs to be initialized
    private var userIsInTheMiddleOfTyping = false
    
    @IBAction private func touchDigit(_ sender: UIButton) {
        let digit = sender.currentTitle!
        if userIsInTheMiddleOfTyping {
            let textCurrentlyInDisplay = display.text!
            display.text = textCurrentlyInDisplay + digit
        } else {
            display.text = digit
        }
        userIsInTheMiddleOfTyping = true
    }
    
    // This is called a computed property
    private var displayValue: Double {
        get {
            return Double(display.text!)!
        }
        set {
            // newValue is a special word
            display.text = String(newValue)
        }
    }
    
    private var brain = CalculatorBrain()
    
    @IBAction private func performOperation(_ sender: UIButton) {
        if userIsInTheMiddleOfTyping {
            brain.setOperand(operand: displayValue)
        }
        userIsInTheMiddleOfTyping = false
        if let mathematicalSymbol = sender.currentTitle {
            brain.performOperation(symbol: mathematicalSymbol)
        }
        displayValue = brain.result
    }
}

