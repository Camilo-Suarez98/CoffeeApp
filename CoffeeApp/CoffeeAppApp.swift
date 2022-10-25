//
//  CoffeeAppApp.swift
//  CoffeeApp
//
//  Created by Camilo on 10/15/22.
//

import SwiftUI

@main
struct CoffeeAppApp: App {
    
    var menuManag = MenuManag()
    var cartManag = CartManag()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(menuManag)
                .environmentObject(cartManag)
        }
    }
}
