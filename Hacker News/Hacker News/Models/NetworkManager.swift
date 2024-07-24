//
//  NetworkManager.swift
//  Hacker News
//
//  Created by Jose Manuel Malagón Alba on 24/7/24.
//

import Foundation

final class NetworkManager: ObservableObject {
    
    @Published var posts = [Post]()
    
    func fetchData() {
        if let url = URL(string: "http://hn.algolia.com/api/v1/search?tags=front_page") {
            let session = URLSession(configuration: .default)
            session.dataTask(with: url) { [weak self] data, response, error in
                guard let self = self else { return }
                guard let data = data else { return }
                
                if error == nil {
                    let decoder = JSONDecoder()
                    do {
                        let results = try decoder.decode(Results.self, from: data)
                        DispatchQueue.main.async {
                            self.posts = results.hits
                        }
                    } catch {
                        print(error)
                    }
                }
            }.resume()
        }
    }
}
