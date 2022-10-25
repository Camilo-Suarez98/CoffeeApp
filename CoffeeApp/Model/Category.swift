//
//  Category.swift
//  CoffeeApp
//
//  Created by Camilo on 10/17/22.
//

import Foundation

struct Category: Decodable, Identifiable {
    var name: String
    var products: [Products]
    var id: String {
        return self.name
    }
    
    func filterProducts(text: String) -> [Products] {
        if text.count > 0 {
            return products.filter({ product in
                product.name.contains(text)
            })
        } else {
            return products
        }
        
    }
}

