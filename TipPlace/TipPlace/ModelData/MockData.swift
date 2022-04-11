//
//  MockData.swift
//  TipPlace
//
//  Created by 리아 on 2022/04/10.
//

import Foundation

struct RecommendedMock {
    static var recommended: [Author] = [AuthorMock.rec1, AuthorMock.rec2]
}

struct BoardPostListMock {
    static var boardPosts: [BoardPost] = [BoardPostMock.boardPost1, BoardPostMock.boardPost2]
}

struct AuthorMock {
    static var author1 = Author(id: 2, profileImage: nil, name: "작성자1", specialDomain: [1])
    static var rec1 = Author(id: 1, profileImage: nil, name: "자취왕", specialDomain: [1])
    static var rec2 = Author(id: 2, profileImage: nil, name: "자취왕2", specialDomain: [1, 2])
}

struct BoardPostMock {
    static var boardPost1 = BoardPost(id: 1,
                                      isAnonymous: false,
                                      title: "자취꿀팁11",
                                      content: "자취는 이렇게 하는 겁니다",
                                      author: AuthorMock.author1,
                                      createdAt: Date.now,
                                      thumnailImageUrl: nil,
                                      usefulCount: 5,
                                      replyCount: 6)
    static var boardPost2 = BoardPost(id: 2,
                                      isAnonymous: false,
                                      title: "자취생들이 꼭 봐야할 화장실 청소 방법",
                                      content: """
                                      평소에 자취하면서 화장실 청소가 고민이었던 분 꼭 들어오세요!
                                      화장실 청소는 생각보다 어렵지 않아요.
                                      딱 5가지만 염두에 두면 되는데요, 먼저 첫번째는 이거고,...
                                      """,
                                      author: AuthorMock.rec2,
                                      createdAt: Date.now,
                                      thumnailImageUrl: nil,
                                      usefulCount: 117,
                                      replyCount: 88)
}
