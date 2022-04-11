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
    static var boardPosts: [BoardPost] = [BoardPostMock.boardPost1, BoardPostMock.boardPost2, BoardPostMock.boardPost3]
}

struct AuthorMock {
    static var author1 = Author(id: 2, profileImage: nil, name: "작성자1", specialDomain: [1])
    static var author2 = Author(id: 3, profileImage: nil, name: "작성자2", specialDomain: [1, 2])
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
                                      isAnonymous: true,
                                      title: "자취꿀팁22",
                                      content: "자취는 이렇게 하는 겁니다아아아아아아아아아아아아아아아아",
                                      author: AuthorMock.author1,
                                      createdAt: Date.distantPast,
                                      thumnailImageUrl: nil,
                                      usefulCount: 6,
                                      replyCount: 10)
    static var boardPost3 = BoardPost(id: 3,
                                      isAnonymous: false,
                                      title: "3rd posting!",
                                      content: "nononono this is the 3rd posting",
                                      author: AuthorMock.author2,
                                      createdAt: Date.now,
                                      thumnailImageUrl: nil,
                                      usefulCount: 10,
                                      replyCount: 20)
}
