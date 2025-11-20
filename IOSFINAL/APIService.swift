//
//  APIService.swift
//  IOSFINAL
//
//  Created by Nafin V. on 11/10/25.
//

import Foundation

class APIService {
    
    static let shared = APIService()
    
    private init() {}
    
    func fetchRedditPrompt(completion: @escaping (String?) -> Void) {
        
        let urlString = "https://www.reddit.com/r/WritingPrompts/top.json?limit=10"
        
        guard let url = URL(string: urlString) else {
            print("Bad URL")
            completion(nil)
            return
        }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            
            if error != nil {
                print("Error:", error!)
                completion(nil)
                return
            }
            
            guard let data = data else {
                print("No data")
                completion(nil)
                return
            }
            
            do {
                if let json = try JSONSerialization.jsonObject(with: data) as? [String: Any],
                   let d = json["data"] as? [String: Any],
                   let children = d["children"] as? [[String: Any]] {
                    
                    if let random = children.randomElement(),
                       let post = random["data"] as? [String: Any],
                       let title = post["title"] as? String {
                        completion(title)
                        return
                    }
                }
                
                completion(nil)
                
            } catch {
                print("JSON Error:", error)
                completion(nil)
            }
            
        }.resume()
    }
}
