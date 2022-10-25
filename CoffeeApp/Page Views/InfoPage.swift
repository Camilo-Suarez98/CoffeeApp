//
//  InfoPage.swift
//  CoffeeApp
//
//  Created by Camilo on 10/18/22.
//

import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {
    func makeUIView(context: Context) -> WKWebView {
        let webView = WKWebView()
        return webView // UIKit
    }
    
    func updateUIView(_ webView: WKWebView, context: Context) {
        let url = URL(string: "https://firtman.github.io/coffeemasters/webapp")
        let request = URLRequest(url: url!)
        webView.load(request)
    }
}

struct InfoPage: View {
    var body: some View {
        WebView()
    }
}

struct InfoPage_Previews: PreviewProvider {
    static var previews: some View {
        InfoPage()
    }
}
