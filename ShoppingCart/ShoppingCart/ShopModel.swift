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
            if cart.items.isEmpty {
                print("There are no items in your cart to checkout")
                print("")
            } else {
                print("Checked out your cart")
                print("")
                // Total all items and add discount
                let finalPrice = cart.cashOut() * paymentTypeMultiplier
                let savings = cart.cashOut() - finalPrice
                print("Your final price is $\(finalPrice.roundTo(places: 2))!")
                print("You saved $\(savings.roundTo(places: 2))!")
                // Break Loop
                shoppingAddiction = false
            }
        case 1:
            cart.addApples(howManyToAdd: getHowManyInt())
            print("Added Apples to your cart")
            print("")
        case 2:
            cart.addBananas(howManyToAdd: getHowManyInt())
            print("Added Bananas to your cart")
            print("")
        case 3:
            cart.addCantaloupe(howManyToAdd: getHowManyInt())
            print("Added Cantaloupe to your cart")
            print("")
        case 4:
            cart.addDogFood(howManyToAdd: getHowManyInt())
            print("Added Dog Food to your cart")
            print("")
        case 5:
            cart.addEggs(howManyToAdd: getHowManyInt())
            print("Added Eggs to your cart")
            print("")
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
    
    private func getHowManyInt() -> Int {
        print("How Many: ", terminator: "")
        while true {
            let input = readLine()
            if let input = input,
                let userNum = Int(input) {
                return userNum
            }
        }
    }
}
