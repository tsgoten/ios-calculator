//
//  CalculatorBrain.swift
//  Calculator
//
//  Created by Tarang Srivastava on 9/17/18.
//  Copyright © 2018 Tarang Srivastava. All rights reserved.
//

import Foundation

class CalculatorBrain {
    
    private var accumulator = 0.0
    func setOperand(operand: Double) {
        accumulator = operand
    }
    
    // "√"
    var operations: Dictionary<String, Double> = [
        "π": Double.pi,
//        "e": Operation.Constant, //M_E,
//        "√": Operation.UnaryOperation,
//
//
    ]
    
    enum Operation {
        case Constant
        case UnaryOperation
        case BinaryOperation
        case Equals
    }
    
    func performOperation(symbol: String) {
        if let constant = operations[symbol]{
            accumulator = constant
        }
    }
    
    var result: Double{
        get {
            return accumulator
        }
    }
 }
