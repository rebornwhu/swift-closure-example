//
//  Autoclosures.swift
//  swift-closure-example
//
//  Created by Xiao Lu on 1/18/16.
//  Copyright © 2016 Xiao Lu. All rights reserved.
//

import Foundation

func f(pred: () -> Bool) {
    if pred() {
        print("It's true")
    }
}

func f2(@autoclosure pred: () -> Bool) {
    if pred() {
        print("It's true")
    }
}