//
//  CartModel.swift
//  ShoppingCart
//
//  Created by Richard Crichlow on 8/23/19.
//  Copyright © 2019 Richard Crichlow. All rights reserved.
//

import Foundation
struct Item {
    // Struct Properties
    var name: String
    var price: Double
}

class Cart {
    // Class Properties
    var items: [Item] = []
    
    // Class Methods
    func addApples() {
        let apples = Item(name: "Apples", price: 1.99)
        items.append(apples)
    }
    
    func addBananas() {
        let bananas = Item(name: "Bananas", price: 1.31)
        items.append(bananas)
    }
    
    func addCantaloupe() {
        let cantaloupe = Item(name: "Cantaloupe", price: 3.60)
        items.append(cantaloupe)
    }
    
    func addDogFood() {
        let dogfood = Item(name: "Dog Food", price: 12.55)
        items.append(dogfood)
    }
    
    func addEggs() {
        let eggs = Item(name: "Eggs", price: 5.69)
        items.append(eggs)
    }
    
    func viewCart() -> String {
        if items.isEmpty {
            return "Your cart is empty"
        }
        var cartString = ""
        for products in items {
            cartString.append("\(products.name) \n")
        }
        return cartString
    }
    
    func cashOut() -> Double {
        var total = Double()
        if items.isEmpty {
            total = 0.0
        }
        for products in items {
            total += products.price
        }
        
        return total
    }
}

