//
//  MockData.swift
//  TipPlace
//
//  Created by 리아 on 2022/04/10.
//

import Foundation

struct ListMock {
    static var boardPosts: [BoardPost] = [BoardPostMock.boardPost1,
                                          BoardPostMock.boardPost2,
                                          BoardPostMock.boardPost3,
                                          BoardPostMock.boardPost4,
                                          BoardPostMock.boardPost5,
                                          BoardPostMock.boardPost53,
                                          BoardPostMock.boardPost54,
                                          BoardPostMock.boardPost55,
                                          BoardPostMock.boardPost56,
                                          BoardPostMock.boardPost57]
    static var authors: [Author] = [AuthorMock.author1,
                                    AuthorMock.author2,
                                    AuthorMock.author3,
                                    AuthorMock.author4,
                                    AuthorMock.author5,
                                    AuthorMock.author6,
                                    AuthorMock.author7,
                                    AuthorMock.author8,
                                    AuthorMock.author9,
                                    AuthorMock.author10,
                                    AuthorMock.author53,
                                    AuthorMock.author54,
                                    AuthorMock.author55,
                                    AuthorMock.author56,
                                    AuthorMock.author57]
    static var userInfos: [UserInfo] = [UserInfoMock.userInfo1,
                                        UserInfoMock.userInfo2,
                                        UserInfoMock.userInfo3,
                                        UserInfoMock.userInfo4,
                                        UserInfoMock.userInfo5,
                                        UserInfoMock.userInfo6,
                                        UserInfoMock.userInfo7,
                                        UserInfoMock.userInfo8,
                                        UserInfoMock.userInfo9,
                                        UserInfoMock.userInfo10,
                                        UserInfoMock.userInfo53,
                                        UserInfoMock.userInfo54,
                                        UserInfoMock.userInfo55,
                                        UserInfoMock.userInfo56,
                                        UserInfoMock.userInfo57]
    static var detailPosts: [DetailPostModel] = [DetailPostMock.detailedPost1,
                                                 DetailPostMock.detailedPost2,
                                                 DetailPostMock.detailedPost3,
                                                 DetailPostMock.detailedPost4,
                                                 DetailPostMock.detailedPost5,
                                                 DetailPostMock.DetailPostMock53,
                                                 DetailPostMock.DetailPostMock54,
                                                 DetailPostMock.DetailPostMock55,
                                                 DetailPostMock.DetailPostMock56,
                                                 DetailPostMock.DetailPostMock57]
    static var comments: [CommentModel] = [CommentModelMock.CommentModelMock1,
                                           CommentModelMock.CommentModelMock2,
                                           CommentModelMock.CommentModelMock3,
                                           CommentModelMock.CommentModelMock4,
                                           CommentModelMock.CommentModelMock5,
                                           CommentModelMock.CommentModelMock6,
                                           CommentModelMock.CommentModelMock7,
                                           CommentModelMock.CommentModelMock8,
                                           CommentModelMock.CommentModelMock9,
                                           CommentModelMock.CommentModelMock10,
                                           CommentModelMock.CommentModelMock11,
                                           CommentModelMock.CommentModelMock12,
                                           CommentModelMock.CommentModelMock13,
                                           CommentModelMock.CommentModelMock14,
                                           CommentModelMock.CommentModelMock15,
                                           CommentModelMock.CommentModelMock16,
                                           CommentModelMock.CommentModelMock53,
                                           CommentModelMock.CommentModelMock54,
                                           CommentModelMock.CommentModelMock55,
                                           CommentModelMock.CommentModelMock56,
                                           CommentModelMock.CommentModelMock57,
                                           CommentModelMock.CommentModelMock58,
                                           CommentModelMock.CommentModelMock59,
                                           CommentModelMock.CommentModelMock60,
                                           CommentModelMock.CommentModelMock61,
                                           CommentModelMock.CommentModelMock62,
                                           CommentModelMock.CommentModelMock63,
                                           CommentModelMock.CommentModelMock64,
                                           CommentModelMock.CommentModelMock65,
                                           CommentModelMock.CommentModelMock66]
}

struct AuthorMock {
    static var author1 = Author(id: 1,
                                profileImage: URL(string: "https://img.hankyung.com/photo/202102/AD.25456232.1.jpg"),
                                name: "자취왕",
                                specialDomain: [Category.livingAlone, Category.cook, Category.cleaning])
    static var author2 = Author(id: 2,
                                profileImage:
                                    URL(string: "https://dimg.donga.com/wps/NEWS/IMAGE/2014/02/04/60569995.3.jpg"),
                                name: "고라파덕33",
                                specialDomain: [Category.companionLife])
    static var author3 = Author(id: 3,
                                profileImage: nil,
                                name: "물위애동동",
                                specialDomain: [])
    static var author4 = Author(id: 4,
                                profileImage: nil,
                                name: "minsu96",
                                specialDomain: [])
    static var author5 = Author(id: 5,
                                profileImage: nil,
                                name: "봄봄봄",
                                specialDomain: [Category.livingAlone])
    static var author6 = Author(id: 6,
                                profileImage: URL(string: """
                                    https://cdn.crowdpic.net/detail-thumb/thumb_d_E2EEB7B49A4E6D7E44355FE4235DBB17.jpg
"""),
                                name: "whitesky123",
                                specialDomain: [])
    static var author7 = Author(id: 7,
                                profileImage: nil,
                                name: "서울여포",
                                specialDomain: [])
    static var author8 = Author(id: 8,
                                profileImage: nil,
                                name: "나눔이",
                                specialDomain: [Category.companionLife])
    static var author9 = Author(id: 9,
                                profileImage: URL(string: """
    https://image-notepet.akamaized.net/resize/620x-/seimage/20180220%2Facb6381fef1e712ccc38f6469aec5422.jpg
"""),
                                name: "잠실동집사",
                                specialDomain: [Category.companionLife, Category.health])
    static var author10 = Author(id: 10,
                                 profileImage: URL(string: "https://t1.daumcdn.net/cfile/blog/242B904959643CE10E"),
                                 name: "puppy_love",
                                 specialDomain: [])
    static var author53 = Author(id: 53,
                                 profileImage: URL(string: """
    https://blog.kakaocdn.net/dn/dmzcxp/btqX826B16P/zUEIdmEYec7XLXKG1fghk1/img.jpg
"""),
                                 name: "보리아빠",
                                 specialDomain: [Category.companionLife])
    static var author54 = Author(id: 54, profileImage: nil, name: "자취자취", specialDomain: [])
    static var author55 = Author(id: 55, profileImage: nil, name: "야옹", specialDomain: [])
    static var author56 = Author(id: 56, profileImage: nil, name: "abc123", specialDomain: [])
    static var author57 = Author(id: 57, profileImage: URL(string: """
                                    https://www.canceranswer.co.kr/news/photo/202109/3045_4820_1253.jpg
"""), name: "운동최고", specialDomain: [Category.health])
}

struct UserInfoMock {
    static var userInfo1 = UserInfo(id: 1,
                                    profileImage: URL(string: """
                                                      https://img.hankyung.com/photo/202102/AD.25456232.1.jpg
                                                      """),
                                    name: "자취왕",
                                    specialDomain: [Category.livingAlone, Category.cook, Category.cleaning],
                                    usefulPost: [],
                                    replyPost: [1],
                                    markPost: [],
                                    writtendPost: [1, 3],
                                    interestedTag: ["자취", "청소", "요리", "꿀팁Ca"],
                                    interestedCategory: [Category.livingAlone, Category.cleaning, Category.cook])
    static var userInfo2 = UserInfo(id: 2,
                                    profileImage: URL(string: """
                                                        https://dimg.donga.com/wps/NEWS/IMAGE/2014/02/04/60569995.3.jpg
                                                        """),
                                    name: "고라파덕3",
                                    specialDomain: [Category.companionLife],
                                    usefulPost: [3],
                                    replyPost: [1, 3],
                                    markPost: [1, 3],
                                    writtendPost: [2],
                                    interestedTag: ["자취", "독립", "동물", "애완견"],
                                    interestedCategory: [Category.companionLife, Category.livingAlone])
    static var userInfo3 = UserInfo(id: 3,
                                    profileImage: nil,
                                    name: "물위애동동",
                                    specialDomain: [],
                                    usefulPost: [1, 3],
                                    replyPost: [1, 3],
                                    markPost: [3],
                                    writtendPost: [],
                                    interestedTag: ["자취", "독립", "동물", "애완견"],
                                    interestedCategory: [Category.companionLife, Category.livingAlone])
    static var userInfo4 = UserInfo(id: 4,
                                    profileImage: nil,
                                    name: "minsu96",
                                    specialDomain: [],
                                    usefulPost: [],
                                    replyPost: [2, 4],
                                    markPost: [],
                                    writtendPost: [],
                                    interestedTag: ["자취", "독립", "동물", "애완견"],
                                    interestedCategory: [Category.companionLife, Category.livingAlone])
    static var userInfo5 = UserInfo(id: 5,
                                    profileImage: nil,
                                    name: "봄봄봄",
                                    specialDomain: [Category.livingAlone],
                                    usefulPost: [1, 3],
                                    replyPost: [1, 3],
                                    markPost: [1, 3],
                                    writtendPost: [],
                                    interestedTag: ["자취", "독립", "동물", "애완견"],
                                    interestedCategory: [Category.companionLife, Category.livingAlone])
    static var userInfo6 = UserInfo(id: 6,
                                    profileImage: URL(string: """
https://cdn.crowdpic.net/detail-thumb/thumb_d_E2EEB7B49A4E6D7E44355FE4235DBB17.jpg
"""),
                                    name: "whitesky123",
                                    specialDomain: [],
                                    usefulPost: [],
                                    replyPost: [2],
                                    markPost: [],
                                    writtendPost: [],
                                    interestedTag: ["자취", "독립", "동물", "애완견"],
                                    interestedCategory: [Category.companionLife, Category.livingAlone])
    static var userInfo7 = UserInfo(id: 7,
                                    profileImage: nil,
                                    name: "서울여포",
                                    specialDomain: [],
                                    usefulPost: [],
                                    replyPost: [2],
                                    markPost: [],
                                    writtendPost: [],
                                    interestedTag: ["자취", "독립", "동물", "애완견"],
                                    interestedCategory: [Category.companionLife, Category.livingAlone])
    static var userInfo8 = UserInfo(id: 8,
                                    profileImage: nil,
                                    name: "나눔이",
                                    specialDomain: [Category.companionLife],
                                    usefulPost: [],
                                    replyPost: [4],
                                    markPost: [4],
                                    writtendPost: [5],
                                    interestedTag: ["자취", "독립", "동물", "애완견"],
                                    interestedCategory: [Category.companionLife, Category.livingAlone])
    static var userInfo9 = UserInfo(id: 9,
                                    profileImage: URL(string: """
                                                      https://image-notepet.akamaized.net/resize/620x-/seimage/
20180220%2Facb6381fef1e712ccc38f6469aec5422.jpg
"""),
                                    name: "잠실동집사",
                                    specialDomain: [Category.companionLife, Category.health],
                                    usefulPost: [4],
                                    replyPost: [4],
                                    markPost: [],
                                    writtendPost: [],
                                    interestedTag: ["고양이", "운동"],
                                    interestedCategory: [Category.companionLife, Category.health])
    static var userInfo10 = UserInfo(id: 10,
                                     profileImage: URL(string: "https://t1.daumcdn.net/cfile/blog/242B904959643CE10E"),
                                     name: "puppy_love",
                                     specialDomain: [],
                                     usefulPost: [],
                                     replyPost: [],
                                     markPost: [],
                                     writtendPost: [4],
                                     interestedTag: ["강아지", "고양이"],
                                     interestedCategory: [Category.companionLife])
    static var userInfo53 = UserInfo(id: 53,
                                     profileImage:
                                        URL(string: """
                                        https://blog.kakaocdn.net/dn/dmzcxp/btqX826B16P/zUEIdmEYec7XLXKG1fghk1/img.jpg
"""),
                              name: "보리아빠",
                              specialDomain: [Category.companionLife],
                              usefulPost: [57],
                              replyPost: [53, 54, 55],
                              markPost: nil,
                              writtendPost: [53, 54],
                              interestedTag: ["강아지", "산책", "반려동물"],
                              interestedCategory: [Category.companionLife, Category.cook, Category.health])
    static var userInfo54 = UserInfo(id: 54,
                                     profileImage: nil,
                                     name: "자취자취",
                                     specialDomain: [],
                                     usefulPost: [53, 54, 57],
                                     replyPost: [53, 54, 55],
                                     markPost: [54],
                                     writtendPost: [55],
                                     interestedTag: ["자취", "운동", "연애", "대학"],
                                     interestedCategory: [Category.livingAlone, Category.campusLife])
    static var userInfo55 = UserInfo(id: 55,
                                     profileImage: nil,
                                     name: "야옹",
                                     specialDomain: [],
                                     usefulPost: [57],
                                     replyPost: [53, 54, 56],
                                     markPost: [],
                                     writtendPost: [56],
                                     interestedTag: ["고양이", "집사", "동물"],
                                     interestedCategory: [Category.livingAlone, Category.companionLife, Category.hobby])
    static var userInfo56 = UserInfo(id: 56,
                                     profileImage: nil,
                                     name: "abc123",
                                     specialDomain: [],
                                     usefulPost: [56, 57],
                                     replyPost: [53, 56, 57],
                                     markPost: nil,
                                     writtendPost: [57],
                                     interestedTag: ["자취", "갓생", "집밥"],
                                     interestedCategory: [Category.campusLife, Category.cook, Category.livingAlone])
    static var userInfo57 = UserInfo(id: 57,
                                     profileImage: URL(string: """
https://www.canceranswer.co.kr/news/photo/202109/3045_4820_1253.jpg
"""),
                                     name: "운동최고",
                                     specialDomain: [Category.health],
                                     usefulPost: [53, 57],
                                     replyPost: [53, 57],
                                     markPost: [53],
                                     writtendPost: nil,
                                     interestedTag: ["운동", "삼대", "헬스"],
                                     interestedCategory: [Category.health, Category.livingAlone])
}

struct CommentModelMock {
    static var CommentModelMock1 = CommentModel(
        id: 1,
        postId: 1,
        commentId: nil,
        isAnonymous: false,
        author: AuthorMock.author3,
        content: "좋은 정보 감사합니다.",
        isReply: false,
        createdAt: Calendar.current.date(from: DateComponents(year: 2022, month: 3, day: 17, hour: 15, minute: 20))!,
        usefulCount: 0
    )
    static var CommentModelMock2 = CommentModel(
        id: 2,
        postId: 1,
        commentId: 1,
        isAnonymous: false,
        author: AuthorMock.author3,
        content: "유용하게 써먹고 있어요!",
        isReply: true,
        createdAt: Calendar.current.date(from: DateComponents(year: 2022, month: 3, day: 17, hour: 15, minute: 24))!,
        usefulCount: 0
    )
    static var CommentModelMock3 = CommentModel(
        id: 3,
        postId: 1,
        commentId: nil,
        isAnonymous: true,
        author: AuthorMock.author2,
        content: "와 꿀팁 시리즈당",
        isReply: false,
        createdAt: Calendar.current.date(from: DateComponents(year: 2022, month: 3, day: 18, hour: 11, minute: 19))!,
        usefulCount: 0
    )
    static var CommentModelMock4 = CommentModel(
        id: 4,
        postId: 1,
        commentId: nil,
        isAnonymous: true,
        author: AuthorMock.author5,
        content: "감자로 할만한 다른 음식이 있을까요?",
        isReply: false,
        createdAt: Calendar.current.date(from: DateComponents(year: 2022, month: 3, day: 19, hour: 17, minute: 20))!,
        usefulCount: 0
    )
    static var CommentModelMock5 = CommentModel(
        id: 5,
        postId: 1,
        commentId: 4,
        isAnonymous: false,
        author: AuthorMock.author1,
        content: "감자 튀김도 괜찮습니다!",
        isReply: true,
        createdAt: Calendar.current.date(from: DateComponents(year: 2022, month: 3, day: 19, hour: 17, minute: 57))!,
        usefulCount: 0
    )
    static var CommentModelMock6 = CommentModel(
        id: 6,
        postId: 1,
        commentId: 4,
        isAnonymous: true,
        author: AuthorMock.author5,
        content: "감사합니다~",
        isReply: true,
        createdAt: Calendar.current.date(from: DateComponents(year: 2022, month: 3, day: 19, hour: 18, minute: 02))!,
        usefulCount: 0
    )
    static var CommentModelMock7 = CommentModel(
        id: 1,
        postId: 2,
        commentId: nil,
        isAnonymous: true,
        author: AuthorMock.author4,
        content: "으악",
        isReply: false,
        createdAt: Calendar.current.date(from: DateComponents(year: 2022, month: 3, day: 19, hour: 21, minute: 02))!,
        usefulCount: 0
    )
    static var CommentModelMock8 = CommentModel(
        id: 2,
        postId: 2,
        commentId: nil,
        isAnonymous: true,
        author: AuthorMock.author6,
        content: "바선생을 보셨군요",
        isReply: false,
        createdAt: Calendar.current.date(from: DateComponents(year: 2022, month: 3, day: 20, hour: 10, minute: 10))!,
        usefulCount: 0
    )
    static var CommentModelMock9 = CommentModel(
        id: 3,
        postId: 2,
        commentId: nil,
        isAnonymous: true,
        author: AuthorMock.author7,
        content: "허허허",
        isReply: false,
        createdAt: Calendar.current.date(from: DateComponents(year: 2022, month: 3, day: 20, hour: 11, minute: 08))!,
        usefulCount: 0
    )
    static var CommentModelMock10 = CommentModel(
        id: 1,
        postId: 3,
        commentId: nil,
        isAnonymous: true,
        author: AuthorMock.author2,
        content: "오늘도 유용한 꿀팁!",
        isReply: false,
        createdAt: Calendar.current.date(from: DateComponents(year: 2022, month: 3, day: 24, hour: 15, minute: 12))!,
        usefulCount: 0
    )
    static var CommentModelMock11 = CommentModel(
        id: 2,
        postId: 3,
        commentId: nil,
        isAnonymous: true,
        author: AuthorMock.author3,
        content: "혹시 다음 꿀팁은 언제 올라오나요?",
        isReply: false,
        createdAt: Calendar.current.date(from: DateComponents(year: 2022, month: 3, day: 24, hour: 16, minute: 02))!,
        usefulCount: 0
    )
    static var CommentModelMock12 = CommentModel(
        id: 3,
        postId: 3,
        commentId: 2,
        isAnonymous: true,
        author: AuthorMock.author2,
        content: "일주일정도 간격으로 올리시는것 같아요",
        isReply: true,
        createdAt: Calendar.current.date(from: DateComponents(year: 2022, month: 3, day: 24, hour: 16, minute: 04))!,
        usefulCount: 0
    )
    static var CommentModelMock13 = CommentModel(
        id: 4,
        postId: 3,
        commentId: nil,
        isAnonymous: false,
        author: AuthorMock.author5,
        content: "우왕",
        isReply: false,
        createdAt: Calendar.current.date(from: DateComponents(year: 2022, month: 3, day: 24, hour: 18, minute: 17))!,
        usefulCount: 0
    )
    static var CommentModelMock14 = CommentModel(
        id: 1,
        postId: 4,
        commentId: nil,
        isAnonymous: false,
        author: AuthorMock.author4,
        content: "저희 강아지도 가끔 그러긴해요",
        isReply: false,
        createdAt: Calendar.current.date(from: DateComponents(year: 2022, month: 3, day: 27, hour: 12, minute: 18))!,
        usefulCount: 0
    )
    static var CommentModelMock15 = CommentModel(
        id: 2,
        postId: 4,
        commentId: nil,
        isAnonymous: false,
        author: AuthorMock.author8,
        content: "낮선 소리가 들릴면 그럴때가 있더라고요",
        isReply: false,
        createdAt: Calendar.current.date(from: DateComponents(year: 2022, month: 3, day: 27, hour: 13, minute: 10))!,
        usefulCount: 0
    )
    static var CommentModelMock16 = CommentModel(
        id: 3,
        postId: 4,
        commentId: nil,
        isAnonymous: true,
        author: AuthorMock.author9,
        content: "일시적인 현상입니다! 시간이 지나면 괜찮아집니다.",
        isReply: false,
        createdAt: Calendar.current.date(from: DateComponents(year: 2022, month: 3, day: 27, hour: 18, minute: 40))!,
        usefulCount: 0
    )
    static var CommentModelMock53 = CommentModel(id: 1,
                                                 postId: 53,
                                                 commentId: nil,
                                                 isAnonymous: false,
                                                 author: AuthorMock.author53,
                                                 content: "~~하는 법에 의거 일단 우리집 강아지 사진 올렸습니다 ㅋㅋ",
                                                 isReply: false,
                                                 createdAt:
    Calendar.current.date(from: DateComponents(year: 2022, month: 3, day: 25, hour: 20, minute: 25))!,
                                                 usefulCount: 1)
    static var CommentModelMock54 = CommentModel(id: 2,
                                                 postId: 53,
                                                 commentId: 1,
                                                 isAnonymous: false,
                                                 author: AuthorMock.author54,
                                                 content: "흑흑 너무 귀엽네요",
                                                 isReply: true,
                                                 createdAt:
    Calendar.current.date(from: DateComponents(year: 2022, month: 3, day: 25, hour: 21, minute: 20))!,
                                                 usefulCount: 0)
    static var CommentModelMock55 = CommentModel(id: 3,
                                                 postId: 53,
                                                 commentId: 1,
                                                 isAnonymous: false,
                                                 author: AuthorMock.author55,
                                                 content: "와 몇 살이예요?",
                                                 isReply: true,
                                                 createdAt:
    Calendar.current.date(from: DateComponents(year: 2022, month: 3, day: 25, hour: 21, minute: 25))!,
                                                 usefulCount: 0)
    static var CommentModelMock56 = CommentModel(id: 4,
                                                 postId: 53,
                                                 commentId: 1,
                                                 isAnonymous: true,
                                                 author: AuthorMock.author56,
                                                 content: "저도 개 키우고 싶은데 ㅠㅠ",
                                                 isReply: true,
                                                 createdAt:
    Calendar.current.date(from: DateComponents(year: 2022, month: 3, day: 25, hour: 22, minute: 20))!,
                                                 usefulCount: 0)
    static var CommentModelMock57 = CommentModel(id: 5,
                                                 postId: 53,
                                                 commentId: nil,
                                                 isAnonymous: true,
                                                 author: AuthorMock.author57,
                                                 content: "와 추천 박고 갑니다!!",
                                                 isReply: false,
                                                 createdAt:
    Calendar.current.date(from: DateComponents(year: 2022, month: 3, day: 27, hour: 20, minute: 20))!,
                                                 usefulCount: 0)
    static var CommentModelMock58 = CommentModel(id: 1,
                                                 postId: 54,
                                                 commentId: nil,
                                                 isAnonymous: false,
                                                 author: AuthorMock.author54,
                                                 content: "헐 키우시다가 물린 적 있으신가요...? 걱정되네요 갑자기 ㅠ",
                                                 isReply: false,
                                                 createdAt:
    Calendar.current.date(from: DateComponents(year: 2022, month: 4, day: 1, hour: 20, minute: 32))!,
                                                 usefulCount: 0)
    static var CommentModelMock59 = CommentModel(id: 2,
                                                 postId: 54,
                                                 commentId: 1,
                                                 isAnonymous: false,
                                                 author: AuthorMock.author53,
                                                 content: "저희 부모님이 물린 적이 계셔서 ㅠㅠ 키우시는 분들은 조심하셔야 합니다!!",
                                                 isReply: true,
                                                 createdAt:
    Calendar.current.date(from: DateComponents(year: 2022, month: 4, day: 1, hour: 20, minute: 40))!,
                                                 usefulCount: 0)
    static var CommentModelMock60 = CommentModel(id: 3,
                                                 postId: 54,
                                                 commentId: nil,
                                                 isAnonymous: true,
                                                 author: AuthorMock.author55,
                                                 content: "헉 저도 어렸을 때 물린 경험이 떠오르네요",
                                                 isReply: false,
                                                 createdAt:
    Calendar.current.date(from: DateComponents(year: 2022, month: 4, day: 3, hour: 20, minute: 12))!,
                                                 usefulCount: 0)
    static var CommentModelMock61 = CommentModel(id: 1,
                                                 postId: 55,
                                                 commentId: nil,
                                                 isAnonymous: false,
                                                 author: AuthorMock.author53,
                                                 content: "여기로 한 번 들어가보실래요??",
                                                 isReply: false,
                                                 createdAt:
    Calendar.current.date(from: DateComponents(year: 2022, month: 4, day: 1, hour: 22, minute: 34))!,
                                                 usefulCount: 0)
    static var CommentModelMock62 = CommentModel(id: 2,
                                                 postId: 55,
                                                 commentId: 1,
                                                 isAnonymous: false,
                                                 author: AuthorMock.author54,
                                                 content: "ㅠㅠ 링크가 없습니다..",
                                                 isReply: true,
                                                 createdAt:
    Calendar.current.date(from: DateComponents(year: 2022, month: 4, day: 2, hour: 21, minute: 34))!,
                                                 usefulCount: 0)
    static var CommentModelMock63 = CommentModel(id: 1,
                                                 postId: 56,
                                                 commentId: nil,
                                                 isAnonymous: false,
                                                 author: AuthorMock.author56,
                                                 content: "팔굽혀펴기 하루에 3세트 ㄱㄱ",
                                                 isReply: false,
                                                 createdAt:
    Calendar.current.date(from: DateComponents(year: 2022, month: 4, day: 2, hour: 15, minute: 40))!,
                                                 usefulCount: 0)
    static var CommentModelMock64 = CommentModel(id: 2,
                                                 postId: 56,
                                                 commentId: 1,
                                                 isAnonymous: false,
                                                 author: AuthorMock.author55,
                                                 content: "어떤 자세로 하는 게 가장 좋나요??",
                                                 isReply: true,
                                                 createdAt:
    Calendar.current.date(from: DateComponents(year: 2022, month: 4, day: 2, hour: 16, minute: 10))!,
                                                 usefulCount: 0)
    static var CommentModelMock65 = CommentModel(id: 1,
                                                 postId: 57,
                                                 commentId: nil,
                                                 isAnonymous: false,
                                                 author: AuthorMock.author56,
                                                 content: "다른 운동 방법이나 기구 추천하실 분 있나요???",
                                                 isReply: false,
                                                 createdAt:
    Calendar.current.date(from: DateComponents(year: 2022, month: 4, day: 3, hour: 20, minute: 01))!,
                                                 usefulCount: 0)
    static var CommentModelMock66 = CommentModel(id: 2,
                                                 postId: 57,
                                                 commentId: 1,
                                                 isAnonymous: false,
                                                 author: AuthorMock.author57,
                                                 content: "흠 푸쉬업 어떠신가요?",
                                                 isReply: true,
                                                 createdAt:
    Calendar.current.date(from: DateComponents(year: 2022, month: 4, day: 4, hour: 20, minute: 01))!,
                                                 usefulCount: 0)
}
