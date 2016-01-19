//
//  CaptureValues.swift
//  swift-closure-example
//
//  Created by Xiao Lu on 1/18/16.
//  Copyright © 2016 Xiao Lu. All rights reserved.
//

import Foundation

/*
makeIncrement(_:) return a function, when you call that function,
it returns an Int.
*/
func makeIncrement(forIncrement amount: Int) ->
    () -> Int {
        var runningTotal = 0
        func incrementer() -> Int {
            runningTotal += amount
            return runningTotal
        }
        
        return incrementer
}