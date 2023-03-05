//
//  GetRandomUserService.swift
//  Models Practical
//
//  Created by Kuda Zata on 5/3/2023.
//

import Foundation

struct GetRandomUserService {
    
    func getRandomUser(completion: @escaping (Swift.Result<RandomUser, Error>) -> Void) {
        
        let url = "https://randomuser.me/api/"
        
        if let url = URL(string: url) {
            let request = URLRequest(url: url)
            
            URLSession.shared.dataTask(with: request) { data, response, error in
                
                if let error = error {
                    completion(.failure(error))
                    return
                }
                
                guard let data = data else {
                    return
                }
                
                do {
                    let decoder = JSONDecoder()
                    let randomUser = try decoder.decode(RandomUser.self, from: data)
                    completion(.success(randomUser))
                }
                catch {
                    completion(.failure(error))
                }
                
            }.resume()
        }
    }
}
