//
//  main.swift
//  swift-closure-example
//
//  Created by Xiao Lu on 1/18/16.
//  Copyright © 2016 Xiao Lu. All rights reserved.
//

import Foundation


//print("Result: \(mathFunction(2, 3))")

// MARK: Function Types as Parameter Types
//printMathResult(addTwoInts, 3, 5)

// MARK: Function Types as Return Types
//var currentValue = 3
//let moveNearerToZero = chooseStepFunction(currentValue > 0)
//
//while currentValue != 0 {
//    print("\(currentValue)...")
//    currentValue = moveNearerToZero(currentValue)
//}


// MARK: Closure Expression
//print(reversed)


// MARK: Trailing closure
// Version 1 - General syntax
//someFunctionThatTakesAClosure({ print("Execute trailing closure") })

// Version 2 - Trailing closure syntax
//someFunctionThatTakesAClosure() {
//    print("Execute trailing closure")
//}

// Version 3 - Even shorter, removing "()"
//someFunctionThatTakesAClosure {
//    print("Execute trailing closure")
//}

//print(strings)


// MARK: CaptureValues
//let incrementByTen = makeIncrement(forIncrement: 10)
//
//print(incrementByTen())
//print(incrementByTen())
//print(incrementByTen())
//
//let alsoIncrementByTen = incrementByTen
//print(alsoIncrementByTen())


// MARK: Autoclosures
// Version 1 - Define closure as a constant
var customersInLine = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]
print(customersInLine.count)
//let customerProvider = {
//    customersInLine.removeAtIndex(0)
//}
//print(customersInLine.count)
//print("Now serving \(customerProvider())")
//print(customersInLine.count)

// Version 2 - Use closure expression
//func serveCustomer(customerProvider: () -> String) {
//    print("Now serving \(customerProvider())")
//}
//serveCustomer({customersInLine.removeAtIndex(0)})
//print(customersInLine.count)

// Version 3 - Use @autoclosure attribute
//func serveCustomer(@autoclosure customerProvider: () -> String) {
//    print("Now serving \(customerProvider())")
//}
//serveCustomer(customersInLine.removeAtIndex(0))
//print(customersInLine.count)

// Version 4 - @autoclosure(escaping)
var customerProviders: [() -> String] = []
func collectCustomerProviders(@autoclosure(escaping)
    customerProvider: () -> String) {
    customerProviders.append(customerProvider)
}

collectCustomerProviders(customersInLine.removeAtIndex(0))
collectCustomerProviders(customersInLine.removeAtIndex(0))

print("collected \(customerProviders.count) closures")

for customerProvider in customerProviders {
    print("Now serving \(customerProvider())")
}







