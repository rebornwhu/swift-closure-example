//
//  Closures.swift
//  swift-closure-example
//
//  Created by Xiao Lu on 1/18/16.
//  Copyright © 2016 Xiao Lu. All rights reserved.
//

import Foundation

let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]

func backwards(s1: String, _ s2: String) -> Bool {
    return s1 > s2
}

// Version 1 - Closure as parameter
//var reversed = names.sort(backwards)

// Version 2 - Closure expression general form
//var reversed = names.sort({ (s1: String, s2: String) ->
//    Bool in
//    return s1 > s2
//})

// Version 3 - Infer argument types
//var reversed = names.sort({s1, s2 in return s1 > s2})

// Version 4 - Infer return type
//var reversed = names.sort({s1, s2 in s1 > s2})

// Version 5 - Shorthand argument name and "in"
//var reversed = names.sort({ $0 > $1 })

// Version 6 - Trailing closure
//var reversed = names.sort {$0 > $1}

// Version 7 - Operator functions
var reversed = names.sort


// MARK: Trailing closure
func someFunctionThatTakesAClosure(closure: () -> Void) {
    print("Execute someFunctionTakesAClosure()")
    
    closure()
}

let digitNames = [
    0: "Zero", 1: "One", 2: "Two", 3: "Three", 4: "Four", 5: "Five",
    6: "Six", 7: "Seven", 8: "Eight", 9: "Nine"
]
let numbers = [16, 58, 510]

let strings = numbers.map {
    (var number) -> String in
    var output = ""
    while number > 0 {
        output = digitNames[number % 10]! + output
        number /= 10
    }
    return output
}


