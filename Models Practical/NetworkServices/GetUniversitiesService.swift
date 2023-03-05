//
//  GetUniversitiesService.swift
//  Models Practical
//
//  Created by Kuda Zata on 5/3/2023.
//

import Foundation

struct GetUniversitiesService {
    
    func getUniversities(completion: @escaping (Swift.Result<[University], Error>) -> Void) {
        
        let url = "http://universities.hipolabs.com/search?country=Zimbabwe"
        
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
                    let universities = try decoder.decode([University].self, from: data)
                    completion(.success(universities))
                }
                catch {
                    completion(.failure(error))
                }
                
            }.resume()
        }
    }
}
