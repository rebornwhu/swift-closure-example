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

// Version 2 - Closure expression
//var reversed = names.sort({ (s1: String, s2: String) ->
//    Bool in
//    return s1 > s2
//})

// Version 3 - General form
//var reversed = names.sort({ (s1: String, s2: String) ->
//    Bool in
//    return s1 > s2
//})

// Version 4 - 
var reversed = names.sort({s1, s2 in return s1 > s2})