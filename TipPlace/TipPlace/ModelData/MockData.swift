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
    static var boardPosts: [BoardPost] = [
        BoardPostMock.boardPost1,
        BoardPostMock.boardPost2,
        BoardPostMock.boardPost3,
        BoardPostMock.boardPost4,
        BoardPostMock.boardPost5]
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
    static var boardPost3 = BoardPost(id: 3,
                                      isAnonymous: false,
                                      title: "자취생들아... 진심 바선생은 전설이다..",
                                      content: """
                                      바선생을 보지 않는 법이 궁금하십니까?? 그건 답이 없습니다. 돈을 쏟아부으십시오.
                                      바선생이 있는 지 확인하는 방법: 버섯을 물에 불린다. 몰려드는 바선생을 구경한다.
                                      """,
                                      author: AuthorMock.rec1,
                                      createdAt: Date.now,
                                      thumnailImageUrl: nil,
                                      usefulCount: 1,
                                      replyCount: 21)
    static var boardPost4 = BoardPost(id: 4,
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
    static var boardPost5 = BoardPost(id: 5,
                                      isAnonymous: false,
                                      title: "자취생들아... 진심 바선생은 전설이다..",
                                      content: """
                                      바선생을 보지 않는 법이 궁금하십니까?? 그건 답이 없습니다. 돈을 쏟아부으십시오.
                                      바선생이 있는 지 확인하는 방법: 버섯을 물에 불린다. 몰려드는 바선생을 구경한다.
                                      """,
                                      author: AuthorMock.rec1,
                                      createdAt: Date.now,
                                      thumnailImageUrl: nil,
                                      usefulCount: 1,
                                      replyCount: 21)
}
