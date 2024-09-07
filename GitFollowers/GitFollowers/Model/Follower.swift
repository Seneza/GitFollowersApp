//
//  Follower.swift
//  GitFollowers
//
//  Created by Gaston on 9/6/24.
//

import Foundation

struct Follower: Codable, Hashable {
    var login: String
    var avatarUrl: String
    
    // Slight optimization, nice to have but not a necessity in our small scale use case
    func hash(into hasher: inout Hasher) {
        hasher.combine(login)
        hasher.combine(avatarUrl)
    }
}
