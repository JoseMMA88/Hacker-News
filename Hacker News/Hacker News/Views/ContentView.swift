//
//  ContentView.swift
//  Hacker News
//
//  Created by Jose Manuel Malagón Alba on 24/7/24.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView {
            List(networkManager.posts) { post in
                PostViewCell(title: post.title,
                             points: post.points,
                             url: post.url)
            }
            .navigationBarTitle("HACKER NEWS")
        }
        .onAppear {
            networkManager.fetchData()
        }
        .listStyle(.plain)
    }
}

#Preview {
    ContentView()
}
