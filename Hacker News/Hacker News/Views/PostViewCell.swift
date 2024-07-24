//
//  PostViewCell.swift
//  Hacker News
//
//  Created by Jose Manuel Malagón Alba on 24/7/24.
//

import SwiftUI


struct PostViewCell: View {
    
    let title: String
    let points: Int
    let url: String?
    
    var body: some View {
        NavigationLink(
            destination: DetailView(url: url)) {
                HStack {
                    Text(String(points))
                    Text(title)
                }
            }
    }
}

#Preview {
    PostViewCell(title: "Text",
                 points: 8,
                 url: "https://josemalagon.es")
}
