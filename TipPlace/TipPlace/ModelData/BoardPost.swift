//
//  BoardPost.swift
//  TipPlace
//
//  Created by 리아 on 2022/04/10.
//

import Foundation

struct BoardPost: Codable, Identifiable {
    var id: Int
    var isAnonymous: Bool
    var title: String
    var content: String
    var author: Author
    var createdAt: Date
    var thumnailImageUrl: URL?
    var usefulCount: Int
    var replyCount: Int
    var tag: [String]?
    var categroy: Category

    init(id: Int, isAnonymous: Bool,
         title: String, content: String,
         author: Author, createdAt: Date, thumnailImageUrl: URL?,
         usefulCount: Int, replyCount: Int, tag: [String], category: Category) {
        self.id = id
        self.isAnonymous = isAnonymous
        self.title = title
        self.content = content
        self.author = author
        self.createdAt = createdAt
        self.thumnailImageUrl = thumnailImageUrl
        self.usefulCount = usefulCount
        self.replyCount = replyCount
        self.tag = tag
        self.categroy = category
    }
}
