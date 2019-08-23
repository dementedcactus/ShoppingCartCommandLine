//
//  CartModel.swift
//  ShoppingCart
//
//  Created by Richard Crichlow on 8/23/19.
//  Copyright © 2019 Richard Crichlow. All rights reserved.
//

import Foundation
struct Item {
    //Add the properties you need the item to have
    var name: String
    var price: Double
}

class Cart {
    var items: [Item] = []

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
    
    func viewCart() {
        for products in items {
            print(products.name)
        }
    }
}

