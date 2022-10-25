//
//  Products.swift
//  CoffeeApp
//
//  Created by Camilo on 10/24/22.
//

import Foundation

struct Products: Decodable, Identifiable {
    var id: Int
    var name: String
    var description: String
    var price: Double
    var image: String
    
    var imageURL: URL {
        URL(string: "https://firtman.github.io/coffeemasters/api/images/\(self.image)")!
    }
}
