//
//  DetailedPost.swift
//  TipPlace
//
//  Created by 김동락 on 2022/04/12.
//

import SwiftUI

struct DetailPostModel: Codable, Identifiable{
    var id: Int
    var category: Category
    var isAnonymous: Bool
    var title: String
    var content: String
    var author: Author
    var createdAt: Date
    var images: [URL]?
    var tags: [String]?
    var usefulCount: Int
    var comment: [CommentModel]?
    
    init(id: Int, category: Category, isAnonymous: Bool,
         title: String, content: String, author: Author,
         createdAt: Date, images: [URL]?, tags: [String]?,
         usefulCount: Int, comment: [CommentModel]?) {
        self.id = id
        self.category = category
        self.isAnonymous = isAnonymous
        self.title = title
        self.content = content
        self.author = author
        self.createdAt = createdAt
        self.images = images
        self.tags = tags
        self.usefulCount = usefulCount
        self.comment = comment
    }
}
