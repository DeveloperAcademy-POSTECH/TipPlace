//
//  DetailedPost.swift
//  TipPlace
//
//  Created by 김동락 on 2022/04/12.
//

import SwiftUI

struct DetailPostModel: Codable, Identifiable {
    var id: Int
    var category: Category
    var isAnonymous: Bool
    var title: String
    var content: String
    var author: Author
    var createdAt: Date
    var images: [URL?]
    var tags: [String]?
    var usefulCount: Int
    var comment: [CommentModel]
    var idWithUseful: [Int] // 유용해요 누른 사람들 아이디
    var idWithReply: [Int] // 댓글 단 사람들 아이디
    var idWithMark: [Int] // 북마크한 사람들 아이디
    init(id: Int, category: Category, isAnonymous: Bool,
         title: String, content: String, author: Author,
         createdAt: Date, images: [URL?], tags: [String],
         usefulCount: Int, comment: [CommentModel], idWithUseful: [Int],
         idWithReply: [Int], idWithMark: [Int]) {
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
        self.idWithUseful = idWithUseful
        self.idWithReply = idWithReply
        self.idWithMark = idWithMark
    }
}
