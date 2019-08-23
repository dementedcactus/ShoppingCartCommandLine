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
struct Item {
    //Add the properties you need the item to have
    var name: String
    var price: Double
    
//    let apples = 1.99
//    let bananas = 1.31
//    let cantaloupe = 3.60
//    let dogFood = 12.55
//    let eggs = 5.69
}

struct Cart {
    var items: [Item]
    // Add methods below as needed
    mutating func addApples() {
        let apples = Item(name: "Apples", price: 1.99)
        items.append(apples)
    }
    
    mutating func addBananas() {
        let bananas = Item(name: "Bananas", price: 1.31)
        items.append(bananas)
    }
    
    mutating func addCantaloupe() {
        let cantaloupe = Item(name: "Cantaloupe", price: 3.60)
        items.append(cantaloupe)
    }
    
    mutating func addDogFood() {
        let dogfood = Item(name: "Dog Food", price: 12.55)
        items.append(dogfood)
    }
    
    mutating func addEggs() {
        let eggs = Item(name: "Eggs", price: 5.69)
        items.append(eggs)
    }
    
    func viewCart() {
        for products in items {
            print(products.name)
        }
    }
}

enum PaymentType: Int {
    //Add cases here
    case cash = 1
    case credit = 2
}
var paymentTypeMultiplier: Double = 1.00

func getIntFromUser() -> Int {
    print("Enter your number here: ", terminator: "")
    while true {
        let input = readLine()
        if let input = input,
            let userNum = Int(input) {
            return userNum
        }
    }
}

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

print("Welcome to the Amazom!")

print("What form of payment will you be using?")
cashOrCredit()

print(menuString)
goShopping()

