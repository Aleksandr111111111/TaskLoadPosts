//
//  ModelPosts.swift
//  TaskLoadPosts
//
//  Created by Aleksander Kulikov on 31.01.2022.
//

import Foundation

struct ModelPosts: Decodable {
    let posts: [AllPosts]
    
    struct AllPosts: Decodable {
        let postId: Int?
        let timeshamp: Int?
        let title: String?
        let previewText: String?
        let likesCount: Int?
        
        enum CodingKeys: String, CodingKey {
            case likesCount = "likes_count"
            case previewText = "preview_text"
            case postId = "postId"
            case timeshamp = "timeshamp"
            case title = "title"
        }
    }
}
