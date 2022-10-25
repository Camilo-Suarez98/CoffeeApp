//
//  CartPage.swift
//  CoffeeApp
//
//  Created by Camilo on 10/16/22.
//

import SwiftUI

struct CartPage: View {
    @EnvironmentObject var cartManag: CartManag
    
    @State var name = ""
    @State var email = ""
    
    var body: some View {
        NavigationStack {
            if cartManag.cart.count == 0 {
                Text("No order available")
                    .navigationTitle("Your order")
            } else {
                List {
                    Section("Products to pay") {
                        ForEach(cartManag.cart, id: \.0.id) { item in OrderItem(item: item)
                        }
                    }
                    Section("Customer") {
                        TextField("Name", text: $name)
                        TextField("Email", text: $email)
                    }
                    
                    Section() {
                        HStack {
                            Spacer()
                            Text("Total")
                            Spacer()
                            Text("$ \(cartManag.total(), specifier: "%.2f")")
                            Spacer()
                        }
                    }
                    
                    Section() {
                        HStack {
                            Spacer()
                            Button("Pay order") {
                                // todo
                            }
                                .foregroundColor(Color("Primary"))
                            Spacer()
                        }
                    }
                }
            }
        }
    }
}

struct CartPage_Previews: PreviewProvider {
    static var previews: some View {
        CartPage()
            .environmentObject(CartManag())
    }
}
