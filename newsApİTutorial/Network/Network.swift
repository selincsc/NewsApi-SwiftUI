//
//  Network.swift
//  newsApİTutorial
//
//  Created by Selin Çağlar on 21.04.2022.
//

import Foundation
struct Network{
    
    func fetchData<T:Codable>(url:String,completion:@escaping(Result<T,Error>)->Void){
        guard let url = URL(string: url) else {
            return
        }
        let session = URLSession.shared
        session.dataTask(with: url) { data, response, error in
            let decoder = JSONDecoder()
            if let error = error {
                completion(.failure(error))
            }
            if let data = data {
                do {
                    let decoded = try decoder.decode(T.self, from: data)
                    completion(.success(decoded))
                }
                catch{
                    completion(.failure(error))
                }
            }
        }.resume()
    }
}
