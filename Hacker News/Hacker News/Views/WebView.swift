//
//  WebView.swift
//  Hacker News
//
//  Created by Jose Manuel Malagón Alba on 24/7/24.
//

import Foundation
import WebKit
import SwiftUI

struct WebView: UIViewRepresentable {
    
    typealias UIViewType = WKWebView
    
    let urlString: String?
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        guard let urlString = urlString,
              let url = URL(string: urlString) else { return }
        
        let request = URLRequest(url: url)
        uiView.load(request)
    }
    
}
