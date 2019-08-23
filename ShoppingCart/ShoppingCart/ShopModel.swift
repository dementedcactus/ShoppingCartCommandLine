//
//  ShopModel.swift
//  ShoppingCart
//
//  Created by Richard Crichlow on 8/23/19.
//  Copyright © 2019 Richard Crichlow. All rights reserved.
//

import Foundation

class Shop{
    
    static let sharedInstance = Shop()
    private init() { }
    var cart = Cart()
    
    func cashOrCredit(){
        switch getIntFromUser() {
        case PaymentType.cash.rawValue:
            print("Cash confirmed")
            paymentTypeMultiplier = 0.96 // For 4% discount
        case PaymentType.credit.rawValue:
            print("Credit confirmed")
        default:
            print("Please choose either cash or credit")
        }
    }
    
    func goShopping(){
        switch getIntFromUser() {
        case -2:
            print("Your cart")
        case -1:
            print("Checked out your cart")
        case 1:
            print("Added Apples to your cart")
            cart.addApples()
        case 2:
            print("Added Bananas to your cart")
        case 3:
            print("Added Cantaloupe to your cart")
        case 4:
            print("Added Dog Food to your cart")
        case 5:
            print("Added Eggs to your cart")
        default:
            print("Please enter a number from the list")
        }
    }
    
    private func getIntFromUser() -> Int {
        print("Enter your number here: ", terminator: "")
        while true {
            let input = readLine()
            if let input = input,
                let userNum = Int(input) {
                return userNum
            }
        }
    }
}
