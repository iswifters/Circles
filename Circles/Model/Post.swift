//
//  Post.swift
//  Circles
//
//  Created by MAC on 02/04/2024.
//

import Foundation

struct Post : Identifiable, Hashable, Codable {
    let id:String
    let ownerUid:String
    let caption:String
    var likes:Int
    let imageUrl:String
    let timestamp:String
    var user: User?
    
}

extension Post {
    static var MOCK_POSTS: [Post] = [
        Post(id: NSUUID().uuidString, ownerUid: NSUUID().uuidString, caption: "Exploring the wilderness", likes: 50, imageUrl: "n1", timestamp: "\(Date())", user: User.MOCK_USERS[0]),
        Post(id: NSUUID().uuidString, ownerUid: NSUUID().uuidString, caption: "Sunset by the beach", likes: 30, imageUrl: "n2", timestamp: "\(Date())", user: User.MOCK_USERS[1]),
        Post(id: NSUUID().uuidString, ownerUid: NSUUID().uuidString, caption: "Cityscape at night", likes: 70, imageUrl: "n3", timestamp: "\(Date())", user: User.MOCK_USERS[2]),
        Post(id: NSUUID().uuidString, ownerUid: NSUUID().uuidString, caption: "Homemade delicacies", likes: 90, imageUrl: "n4", timestamp: "\(Date())", user: User.MOCK_USERS[3]),
        Post(id: NSUUID().uuidString, ownerUid: NSUUID().uuidString, caption: "Mountains calling", likes: 120, imageUrl: "n5", timestamp: "\(Date())", user: User.MOCK_USERS[4]),
        Post(id: NSUUID().uuidString, ownerUid: NSUUID().uuidString, caption: "Morning coffee vibes", likes: 80, imageUrl: "n6", timestamp: "\(Date())", user: User.MOCK_USERS[5]),
        Post(id: NSUUID().uuidString, ownerUid: NSUUID().uuidString, caption: "Artistic expressions", likes: 60, imageUrl: "n7", timestamp: "\(Date())", user: User.MOCK_USERS[6]),
        Post(id: NSUUID().uuidString, ownerUid: NSUUID().uuidString, caption: "Adventure awaits", likes: 110, imageUrl: "n8", timestamp: "\(Date())", user: User.MOCK_USERS[7]),
        Post(id: NSUUID().uuidString, ownerUid: NSUUID().uuidString, caption: "Bookworm's delight", likes: 45, imageUrl: "n9", timestamp: "\(Date())", user: User.MOCK_USERS[8]),
        Post(id: NSUUID().uuidString, ownerUid: NSUUID().uuidString, caption: "Fitness journey begins", likes: 95, imageUrl: "n10", timestamp: "\(Date())", user: User.MOCK_USERS[9])
    ]
}

