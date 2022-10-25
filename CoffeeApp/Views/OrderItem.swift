//
//  OrderItem.swift
//  CoffeeApp
//
//  Created by Camilo on 10/17/22.
//

import SwiftUI

struct OrderItem: View {
    var item: (Products, Int)
    @EnvironmentObject var cartManag: CartManag
    
        var body: some View {
            HStack {
                Text("\(item.1)x")
                Text(item.0.name)
                Spacer()
                Text("$ \(item.0.price * Double(item.1), specifier: "%.2f")")
                Image(systemName: "trash")
                    .foregroundColor (Color("Secondary"))
                    .font(.title)
                    .padding()
                    .onTapGesture {
                        cartManag.remove(product: item.0)
                    }
            }
        }
}

struct OrderItem_Previews: PreviewProvider {
    static var previews: some View {
        OrderItem(item: (Products(id: 1, name: "test", description: "test", price: 1.25, image: ""), 2)).padding()
    }
}
