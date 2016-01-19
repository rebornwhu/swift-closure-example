//
//  FunctionTypes.swift
//  swift-closure-example
//
//  Created by Xiao Lu on 1/18/16.
//  Copyright © 2016 Xiao Lu. All rights reserved.
//

import Foundation

func addTwoInts(a: Int, _ b: Int) -> Int {
    return a + b
}

func multiplyTwoInts(a: Int, _ b: Int) -> Int {
    return a * b
}

var mathFunction: (Int, Int) -> Int = multiplyTwoInts

// MARK: Function Types as Parameter Types
/*
So in method definition, the first argument is a funcion type.
The second arg is Int, thrid Int, you use the 2nd and 3rd as arugments for
the 1st function.
*/
func printMathResult(mathFunction: (Int, Int) -> Int, _ a: Int, _ b: Int) {
    print("Result: \(mathFunction(a, b))")
}

// MARK: Function Types as Return Types
func chooseStepFunction(backwards: Bool) ->
    (Int) -> Int {
    
        func stepForward(input: Int) -> Int {
            return input + 1
        }
        
        func stepBackward(input: Int) -> Int {
            return input - 1
        }
        
    return backwards ? stepBackward : stepForward
}