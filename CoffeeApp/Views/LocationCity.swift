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
                Image(systemName: "mappin.and.ellipse")
                    .foregroundColor(.red)
                Spacer()
            }
            HStack {
                Text("Floridablanca, San")
                Spacer()
                Text("Col")
            }
                .font(.body)
                .padding(.bottom, 10)
            
            Divider()
            
            HStack {
                Text("Info")
                    .font(.title2)
                    .foregroundColor(.blue)
                Spacer()
            }
                .padding(.top, 10)
            
            HStack {
                Image(systemName: "phone")
                Text("+57 3201828392")
                Spacer()
            }
                .padding(.bottom, 10)
                .bold()
                .foregroundColor(.green)
            
            Divider()
            
            HStack {
                Text("Our Schedule")
                    .font(.title2)
                    .foregroundColor(.blue)
                Image(systemName: "clock")
                    .foregroundColor(.green)
                Spacer()
            }
                .padding(.top, 10)
            
            VStack {
                Text("Mon to Fri: 9:00 - 21:00")
                Text("Weekend: 10:00 - 22: 00")
            }
                .frame(width: 370, alignment: .leading)
        }
            .padding()
    }
}

struct Offer_Previews: PreviewProvider {
    static var previews: some View {
        LocationCity()
    }
}
