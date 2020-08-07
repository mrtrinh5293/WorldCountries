//
//  NetworkManager.swift
//  WorldCountries
//
//  Created by Duc Dang on 8/7/20.
//

import Foundation

class NetworkManager: ObservableObject {
    @Published var worldData = [WorldData]()
    @Published var allCountries : [WorldData] = []
    
    func fetchData() {
        
        if let url = URL(string: "https://restcountries.eu/rest/v2/all") {
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { (data, response, error) in
                if error == nil {
                    let decoder = JSONDecoder()
                    if let safeData = data {
                        do {
                            let results = try decoder.decode([WorldData].self, from: safeData)
//                            print(results[0].currencies![0].name)
                            DispatchQueue.main.async {
                                self.worldData = results
                            }
                        } catch {
                            print(error)
                        }
                    }
                    
                }
            }
            task.resume()
        }
    }
}
