//
//  FibonacciFunction.swift
//  Fibonacci
//
//  Created by Adam Moore on 3/17/18.
//  Copyright © 2018 Adam Moore. All rights reserved.
//

import Foundation

func fibonacci(numberOfTimes: Int) -> [Int]{
    
    var fibonacciArray = [Int]()
    
    if numberOfTimes <= 0 {
        fibonacciArray = []
    } else if numberOfTimes == 1 {
        fibonacciArray = [0]
    } else if numberOfTimes == 2 {
        fibonacciArray = [0,1]
    } else {
        fibonacciArray = [0,1]
        var first = 0
        var second = 1
        
        for _ in 3...numberOfTimes {
            let fibonacciNumber = first + second
            fibonacciArray.append(fibonacciNumber)
            first = second
            second = fibonacciNumber
        }
    }
    
    return fibonacciArray
}
