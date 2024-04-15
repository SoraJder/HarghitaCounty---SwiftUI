//
//  ObjectiveUIWeb.swift
//  HarghitaCounty
//
//  Created by Alina Teca on 15.04.2024.
//

import SwiftUI
import WebKit

struct ObjectiveUIWeb: UIViewRepresentable {
    let link: String
    
    func makeUIView(context: Context) -> WKWebView {
        let webView = WKWebView()
        let url = URL(string: link)
        webView.load(URLRequest(url: url!))
        return webView
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        // This space can be left blank
    }
}

#Preview {
    ObjectiveUIWeb(link: objectives[0].link)
}
