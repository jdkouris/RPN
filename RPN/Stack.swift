//
//  Stack.swift
//  Calculator
//
//  Created by John Kouris on 12/9/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation

struct Stack {
    
    var internalArray = [Double]()
    
    func peek() -> Double? {
        return internalArray.last
    }
    
    mutating func pop() -> Double? {
        return internalArray.popLast()
    }
    
    mutating func push(double: Double) {
        internalArray.append(double)
    }
    
}
