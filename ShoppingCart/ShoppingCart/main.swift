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

Enter '-1' to Checkout or '-2' to view your Cart
"""

let paymentString = """
Please select your form of payment:
1) Cash - get 4% off!
2) Credit
"""

print("Welcome to the Amazom! Subsidiary of Gooble!")
print("What form of payment will you be using?")
print("")
print(paymentString)
let shop = Shop()
shop.cashOrCredit()

print(menuString)
while shop.shoppingAddiction {
    shop.goShopping()
}

