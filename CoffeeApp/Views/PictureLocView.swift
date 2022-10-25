//
//  PictureLocView.swift
//  CoffeeApp
//
//  Created by Camilo on 10/24/22.
//

import SwiftUI

struct PictureLocView: View {
    var body: some View {
        Image("Coffee")
            .clipShape(Circle())
            .overlay(Circle().stroke(.white, lineWidth: 5))
            .shadow(radius: 10)
    }
}

struct PictureLocView_Previews: PreviewProvider {
    static var previews: some View {
        PictureLocView()
    }
}
