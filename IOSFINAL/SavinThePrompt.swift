//
//  SavinThePrompt.swift
//  IOSFINAL
//
//  Created by Nafin V. on 11/17/25.
//

import Foundation


enum dailyStreakStatus {
    case none
    case active
    case broken
}

struct SavinThePrompt: Codable {
    let text: String
}




class PromptStorage {
    static let shared = PromptStorage()
    let key = "posts_key"

    func load() -> [SavinThePrompt] {
        if let d = UserDefaults.standard.data(forKey: key) {
            return (try? JSONDecoder().decode([SavinThePrompt].self, from: d)) ?? []
        }
        return []
    }

    func add(_ post: SavinThePrompt) {
        var arr = load()
        arr.insert(post, at: 0)
        if let d = try? JSONEncoder().encode(arr) {
            UserDefaults.standard.set(d, forKey: key)
        }
    }
}

