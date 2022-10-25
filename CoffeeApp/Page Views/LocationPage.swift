//
//  OffersPage.swift
//  CoffeeApp
//
//  Created by Camilo on 10/16/22.
//

import SwiftUI

struct LocationPage: View {
    var body: some View {
        VStack {
            MapView()
            
            PictureLocView()
                .offset(y: -20)
                .padding(.bottom, -50)
            
            LocationCity()
            Spacer()
        }
    }
}

struct OffersPage_Previews: PreviewProvider {
    static var previews: some View {
        LocationPage()
    }
}
