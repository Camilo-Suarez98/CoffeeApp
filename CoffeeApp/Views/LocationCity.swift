//
//  Offer.swift
//  CoffeeApp
//
//  Created by Camilo on 10/16/22.
//

import SwiftUI

struct LocationCity: View {
    var body: some View {
        VStack {
            HStack {
                Text("Find us here")
                    .font(.title)
                    .foregroundColor(.blue)
                Image(systemName: "arrow.up")
                    .foregroundColor(.red)
                Spacer()
            }
            HStack {
                Text("Floridablanca, San")
                Spacer()
                Text("Col")
            }
                .font(.body)
                .padding(.bottom, 15)
            
            Divider()
            
            HStack {
                Text("Info")
                    .font(.title2)
                Spacer()
            }
            
            HStack {
                Image(systemName: "phone")
                Text("+57 3201828392")
                Spacer()
            }
                .padding(.top, 15)
                .bold()
                .foregroundColor(.green)
        }
            .padding()
    }
}

struct Offer_Previews: PreviewProvider {
    static var previews: some View {
        LocationCity()
    }
}
