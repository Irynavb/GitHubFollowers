//
//  NetworkManager.swift
//  GitHubFollowers
//
//  Created by Iryna V Betancourt on 2/1/21.
//

import Foundation

class NetworkManager {
    static let shared = NetworkManager()
    let baseURL  = "https://api.github.com/users/"

    private init() {}

    func getFollowers(for userName: String, page: Int, completed: @escaping (Result<[Follower], GFErrorMessage>) ->  Void) {
        let endpoint = baseURL + "\(userName)/followers?per_page=100&page=\(page)"

        guard let url = URL(string: endpoint) else {
            completed(.failure(.invalidUserName))
            return
        }
        let task = URLSession.shared.dataTask(with: url) { data, response, error in

            if let _ = error {
                completed(.failure(.unableToComplete))
                return
            }

            guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
                completed(.failure(.invalidResponse))
                return
            }

            guard let data  =  data else {
                completed(.failure(.invalidData))
                return
            }

            do {
                let decoder = JSONDecoder()
                decoder.keyDecodingStrategy = .convertFromSnakeCase
                let followers = try decoder.decode([Follower].self, from: data)
                completed(.success(followers))
            } catch {
                completed(.failure(.invalidData))
            }
        }

        task.resume()
    }
}
