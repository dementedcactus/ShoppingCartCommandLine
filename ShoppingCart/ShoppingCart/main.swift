//
//  main.swift
//  ShoppingCart
//
//  Created by Richard Crichlow on 8/23/19.
//  Copyright © 2019 Richard Crichlow. All rights reserved.
//

import Foundation

let menuString = """
Please select your item:
1) Apples ($1.99)
2) Bananas ($1.31)
3) Cantaloupe ($3.60)
4) Dog Food ($12.55)
5) Eggs ($5.69)

Enter '-1' to Checkout
"""

let paymentString = """
Please select your form of payment:
1) Cash - get 4% off!
2) Credit
"""


enum PaymentType: Int {
    //Add cases here
    case cash = 1
    case credit = 2
}
var paymentTypeMultiplier: Double = 1.00

print("Welcome to the Amazom!")
print("What form of payment will you be using?")
let shop = Shop()
shop.cashOrCredit()

print(menuString)
shop.goShopping()

