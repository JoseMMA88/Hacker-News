//
//  DetailView.swift
//  Hacker News
//
//  Created by Jose Manuel Malagón Alba on 24/7/24.
//

import SwiftUI

struct DetailView: View {
    
    let url: String?
    
    var body: some View {
        WebView(urlString: url)
    }
}

#Preview {
    DetailView(url: "https://josemalagon.es")
}
