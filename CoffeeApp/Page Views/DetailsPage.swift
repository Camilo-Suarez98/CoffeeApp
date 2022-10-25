//
//  DetailsPage.swift
//  CoffeeApp
//
//  Created by Camilo on 10/16/22.
//

import SwiftUI

struct DetailsPage: View {
    
    var product: Products
    @State var quantity = 1
    @EnvironmentObject var cartManag: CartManag
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ScrollView {
            AsyncImage(url: product.imageURL)
                .cornerRadius(10)
                .frame(width: 300, height: 150)
                
            Text(product.name)
                .frame(maxWidth: .infinity)
                .multilineTextAlignment(.leading)
                .padding(.top, 24)
                .foregroundColor(Color("Alternative2"))
            Text(product.description)
                .frame(maxWidth: .infinity)
                .multilineTextAlignment(.leading)
                .padding(.top, 24)
                .foregroundColor(Color("SurfaceBg"))
            HStack {
                Text("$ \(product.price, specifier: "%.2f")")
                Stepper(value: $quantity, in: 1...20) {}
            }
                .frame(maxWidth: .infinity)
                .padding(30)
            
            Text("Subtotal: $ \(product.price * Double(quantity), specifier: "%.2f")")
                .bold()
            Button("Add \(quantity) to the cart") {
                cartManag.add(product: product, quantity: quantity)
                dismiss()
            }
                .padding()
                .frame(width: 250)
                .background(Color("CardBg"))
                .foregroundColor(Color.white)
                .cornerRadius(30)
        }
    }
}

struct DetailsPage_Previews: PreviewProvider {
    static var previews: some View {
        DetailsPage(product: Products(id: 1, name: "Test coffee", description: "Best coffee ever", price: 1.25, image: ""))
            .environmentObject(CartManag())
    }
}
