//
//  User.swift
//  Circles
//
//  Created by MAC on 02/04/2024.
//

import Foundation

struct User: Identifiable, Hashable, Codable {
    let id: String
    var username: String
    var profileImageUrl: String?
    var fullname: String?
    var bio: String?
    let email: String
}

extension User {
    static var MOCK_USERS: [User] = [
        .init(id: UUID().uuidString, username: "superman", profileImageUrl: "n1", fullname: "Clark Kent", bio: "Man of Steel", email: "superman@gmail.com"),
        .init(id: UUID().uuidString, username: "wonderwoman", profileImageUrl: "n2", fullname: "Diana Prince", bio: "Amazonian Warrior", email: "wonderwoman@gmail.com"),
        .init(id: UUID().uuidString, username: "thor", profileImageUrl: "n3", fullname: "Thor Odinson", bio: "God of Thunder", email: "thor@gmail.com"),
        .init(id: UUID().uuidString, username: "hulk", profileImageUrl: "n4", fullname: "Bruce Banner", bio: "The Incredible Hulk", email: "hulk@gmail.com"),
        .init(id: UUID().uuidString, username: "captainamerica", profileImageUrl: "n5", fullname: "Steve Rogers", bio: "Super Soldier", email: "captainamerica@gmail.com"),
        .init(id: UUID().uuidString, username: "blackwidow", profileImageUrl: "n6", fullname: "Natasha Romanoff", bio: "The Spy", email: "blackwidow@gmail.com"),
        .init(id: UUID().uuidString, username: "ironman", profileImageUrl: "n7", fullname: "Tony Stark", bio: "Genius, Billionaire, Playboy, Philanthropist", email: "ironman@gmail.com"),
        .init(id: UUID().uuidString, username: "spiderman", profileImageUrl: "n8", fullname: nil, bio: "Friendly Neighborhood Spider-Man", email: "spiderman@gmail.com"),
        .init(id: UUID().uuidString, username: "wolverine", profileImageUrl: "n9", fullname: "Logan", bio: "The Wolverine", email: "wolverine@gmail.com"),
        .init(id: UUID().uuidString, username: "deadpool", profileImageUrl: "n10", fullname: "Wade Wilson", bio: "The Merc with a Mouth", email: "deadpool@gmail.com")
    ]
    
}
