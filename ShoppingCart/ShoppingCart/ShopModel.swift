//
//  ShopModel.swift
//  ShoppingCart
//
//  Created by Richard Crichlow on 8/23/19.
//  Copyright © 2019 Richard Crichlow. All rights reserved.
//

import Foundation

enum PaymentType: Int {
    //Add cases here
    case cash = 1
    case credit = 2
}

class Shop{
    // Class Properties
    static let sharedInstance = Shop()
    init() { }
    var paymentTypeMultiplier: Double = 1.00
    var cart = Cart()
    var shoppingAddiction: Bool = true
    
    // Class Methods
    func cashOrCredit(){
        switch getIntFromUser() {
        case PaymentType.cash.rawValue:
            print("Cash confirmed")
            print("")
            paymentTypeMultiplier = 0.96 // For 4% discount
        case PaymentType.credit.rawValue:
            print("Credit confirmed")
            print("")
        default:
            print("Please choose either cash or credit")
            print("")
        }
    }
    
    func goShopping(){
        switch getIntFromUser() {
        case -2:
            print(cart.viewCart())
        case -1:
            print("Checked out your cart")
            print("")
            // Total all items and Multiply by paymentTypeMultiplier
            let finalPrice = cart.cashOut() * paymentTypeMultiplier
            print("Your final price is \(finalPrice.roundTo(places: 2))!")
            // Break Loop
            shoppingAddiction = false
        case 1:
            print("Added Apples to your cart")
            print("")
            cart.addApples()
        case 2:
            print("Added Bananas to your cart")
            print("")
            cart.addBananas()
        case 3:
            print("Added Cantaloupe to your cart")
            print("")
            cart.addCantaloupe()
        case 4:
            print("Added Dog Food to your cart")
            print("")
            cart.addDogFood()
        case 5:
            print("Added Eggs to your cart")
            print("")
            cart.addEggs()
        default:
            print("Please enter a number from the list")
            print("") 
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
