//
//  CartManager.swift
//  NavigationTest
//
//  Created by Svetlana Gladysheva on 03.08.2022.
//

import Foundation

final class CartManager {
    func getProducts() -> [Product] {
        [
            Product(name: "Bread", price: 100),
            Product(name: "Milk", price: 200),
            Product(name: "Cheese", price: 500)
        ]
    }
    
    func isAddressFilled() -> Bool {
        Int.random(in: 0...1) == 1 // returns random Bool value for example simplicity
    }
}
