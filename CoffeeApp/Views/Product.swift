//
//  Products.swift
//  CoffeeApp
//
//  Created by Camilo on 10/16/22.
//

import SwiftUI

struct Product: View {
    
    var product: Products
    
    var body: some View {
        VStack {
            AsyncImage(url: product.imageURL)
                .frame(width: 300, height: 150)
            
            HStack {
                VStack {
                    Text(product.name)
                        .font(.largeTitle)
                        .bold()
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    Text("$ \(product.price, specifier: "%.2f")")
                        .font(.title3)
                        .frame(maxWidth: .infinity, alignment: .leading)
                }
                Spacer()
            }
        }
        .padding()
    }
}

struct Product_Previews: PreviewProvider {
    static var previews: some View {
        Product(product: Products(id: 1, name: "Black Coffee", description: "Hot coffee", price: 4.5, image: ""))
    }
}
