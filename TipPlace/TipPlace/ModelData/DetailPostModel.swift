//
//  DetailPostModel.swift
//  TipPlace
//
//  Created by 김수진 on 2022/04/12.
//

import Foundation

struct DetailPostModel {
    let id: Int
    let category: Category
    let isAnonymous: Bool
    let title: String
    let content: String
    let author: Author
    let createdAt: Date
    let images: [URL]
    let tags: [String]
    let usefulCount: Int
    let comment: [CommentModel]
}
