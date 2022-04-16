//
//  CommentModel.swift
//  TipPlace
//
//  Created by 김동락 on 2022/04/12.
//

import SwiftUI

struct CommentModel: Codable, Identifiable {
    var id: Int
    var postId: Int
    var commentId: Int? // 대댓글일 경우 댓글의 ID
    var isAnonymous: Bool
    var author: Author
    var content: String
    var isReply: Bool // 댓글이면 false, 대댓글이면 true
    var createdAt: Date
    var usefulCount: Int
    init(id: Int, postId: Int, commentId: Int?, isAnonymous: Bool,
         author: Author, content: String, isReply: Bool, createdAt: Date,
         usefulCount: Int) {
        self.id = id
        self.postId = postId
        self.commentId = commentId
        self.isAnonymous = isAnonymous
        self.author = author
        self.content = content
        self.isReply = isReply
        self.createdAt = createdAt
        self.usefulCount = usefulCount
    }
}
