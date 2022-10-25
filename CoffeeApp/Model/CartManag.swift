//
//  CartManag.swift
//  CoffeeApp
//
//  Created by Camilo on 10/17/22.
//

import Foundation

class CartManag: ObservableObject {
    
    @Published var cart: [(Products, Int)] = []
    
    func add(product: Products, quantity: Int) {
        self.cart.append((product, quantity))
    }
    
    func remove(product: Products) {
        self.cart.removeAll { itemInCart in
            return itemInCart.0.id == product.id
        }
    }
    
    func total() -> Double {
        var total = 0.0
        for item in cart {
            total = item.0.price * Double(item.1)
        }
        return total
    }
}
