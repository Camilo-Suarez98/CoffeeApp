//
//  HomePage.swift
//  CoffeeApp
//
//  Created by Camilo on 10/16/22.
//

import SwiftUI

struct HomePage: View {
    @EnvironmentObject var menuManager: MenuManag
    @State var search = ""
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(menuManager.menu) { category in
                    if category.filterProducts(text: search).count > 0 {
                        Text(category.name)
                        
                        ForEach(category.products) { product in
                            NavigationLink  {
                                DetailsPage(product: product)
                            } label: {
                                Product(product: product)
                            }
                        }
                        
                        ForEach(category.filterProducts(text: search)) { item in
                            ZStack {
                                NavigationLink(destination: DetailsPage(product: item)) {
                                    EmptyView()
                                }
                                Product(product: item)
                            }
                        }
                    }
                }
            }
                .searchable(text: $search)
                .navigationTitle("Products")
        }
    }
}

struct HomePage_Previews: PreviewProvider {
    static var previews: some View {
        HomePage()
            .environmentObject(MenuManag())
    }
}
