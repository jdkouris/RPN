//
//  Calculator.swift
//  Calculator
//
//  Created by John Kouris on 12/9/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation

public struct Calculator {
    
    var stack = Stack()
    
    public init() {
        
    }
    
    public enum Operator {
        case addition
        case subtraction
        case multiplication
        case division
    }
    
    public func topValue() -> Double? {
        return stack.peek()
    }
    
    public mutating func push(_ double: Double) {
        stack.push(double: double)
    }
    
    public mutating func calculate(_ operator: Operator) {
        let firstPoppedElement = stack.pop() ?? 0.0
        let secondPoppedElement = stack.pop() ?? 0.0
        
        let result: Double
        switch `operator` {
        case .addition:
            result = firstPoppedElement + secondPoppedElement
        case .subtraction:
            result = firstPoppedElement - secondPoppedElement
        case .multiplication:
            result = firstPoppedElement * secondPoppedElement
        case .division:
            result = firstPoppedElement / secondPoppedElement
        }
        
        stack.push(double: result)
    }
}
