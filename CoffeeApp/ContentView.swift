//
//  ContentView.swift
//  CoffeeApp
//
//  Created by Camilo on 10/15/22.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var cartMang: CartManag
    
    var body: some View {
        TabView {
            HomePage()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            LocationPage()
                .tabItem {
                    Image(systemName: "location")
                    Text("Location")
                }
            CartPage()
                .tabItem {
                    Image(systemName: "cart")
                    Text("Cart")
                }
                    .badge(cartMang.cart.count)
            InfoPage()
                .tabItem {
                    Image(systemName: "tag")
                    Text("Products")
                }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(CartManag())
    }
}
