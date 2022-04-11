//
//  CommentModel.swift
//  TipPlace
//
//  Created by 김수진 on 2022/04/12.
//

import Foundation

struct CommentModel: Identifiable {
    let id: Int
    let postId: Int
    let commentId: Int? // 대댓글일 경우 댓글의 ID
    let isAnonnymous: Bool
    let author: Author
    let content: String
    let isReply: Bool // 댓글이면 false, 대댓글이면 true
    let createdAt: Date
    let usefulCount: Int
}
