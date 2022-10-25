//
//  MenuManag.swift
//  CoffeeApp
//
//  Created by Camilo on 10/17/22.
//

import Foundation
import Alamofire

class MenuManag: ObservableObject {
    @Published var menu: [Category] = [
        Category(name: "Coffee", products: [
            Products(id: 0, name: "", description: "", price: 1, image: ""),
            Products(id: 0, name: "", description: "", price: 1, image: ""),
            Products(id: 0, name: "", description: "", price: 1, image: ""),
        ])
    ]
    
    init() {
        refreshItemsFromNetwork()
    }
    
    func refreshItemsFromNetwork() {
        AF.request("https://firtman.github.io/coffeemasters/api/menu.json")
            .responseDecodable(of: [Category].self) { response in
                if let menuFromNetwork = response.value {
                    self.menu = menuFromNetwork
                }
            }
    }
}
