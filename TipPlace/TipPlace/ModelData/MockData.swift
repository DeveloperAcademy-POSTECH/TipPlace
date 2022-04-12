//
//  MockData.swift
//  TipPlace
//
//  Created by 리아 on 2022/04/10.
//

import Foundation


struct ListMock {
    static var boardPosts: [BoardPost] = [BoardPostMock.boardPost1, BoardPostMock.boardPost2, BoardPostMock.boardPost3, BoardPostMock.boardPost4, BoardPostMock.boardPost5, BoardPostMock.boardPost53, BoardPostMock.boardPost54, BoardPostMock.boardPost55, BoardPostMock.boardPost56, BoardPostMock.boardPost57]
    static var authors: [Author] = [AuthorMock.author1, AuthorMock.author2, AuthorMock.author3, AuthorMock.author4, AuthorMock.author5, AuthorMock.author6, AuthorMock.author7, AuthorMock.author8, AuthorMock.author9, AuthorMock.author10, AuthorMock.author53, AuthorMock.author54, AuthorMock.author55, AuthorMock.author56, AuthorMock.author57]
    static var userInfos: [UserInfo] = [UserInfoMock.userInfo1, UserInfoMock.userInfo2, UserInfoMock.userInfo3, UserInfoMock.userInfo4, UserInfoMock.userInfo5, UserInfoMock.userInfo6, UserInfoMock.userInfo7, UserInfoMock.userInfo8, UserInfoMock.userInfo9, UserInfoMock.userInfo10, UserInfoMock.userInfo53, UserInfoMock.userInfo54, UserInfoMock.userInfo55, UserInfoMock.userInfo56, UserInfoMock.userInfo57]
    static var detailPosts: [DetailPostModel] = [DetailPostMock.detailedPost1, DetailPostMock.detailedPost2, DetailPostMock.detailedPost3, DetailPostMock.detailedPost4, DetailPostMock.detailedPost5, DetailPostMock.DetailPostMock53, DetailPostMock.DetailPostMock54, DetailPostMock.DetailPostMock55, DetailPostMock.DetailPostMock56, DetailPostMock.DetailPostMock57]
    static var comments: [CommentModel] = [CommentModelMock.comment1_1, CommentModelMock.comment1_2, CommentModelMock.comment1_3, CommentModelMock.comment1_4, CommentModelMock.comment1_5, CommentModelMock.comment1_6, CommentModelMock.comment2_1, CommentModelMock.comment2_2, CommentModelMock.comment2_3, CommentModelMock.comment3_1, CommentModelMock.comment3_2, CommentModelMock.comment3_3, CommentModelMock.comment3_4, CommentModelMock.comment4_1, CommentModelMock.comment4_2, CommentModelMock.comment4_3, CommentModelMock.CommentModelMock53, CommentModelMock.CommentModelMock54, CommentModelMock.CommentModelMock55, CommentModelMock.CommentModelMock56, CommentModelMock.CommentModelMock57, CommentModelMock.CommentModelMock58, CommentModelMock.CommentModelMock59, CommentModelMock.CommentModelMock60, CommentModelMock.CommentModelMock61, CommentModelMock.CommentModelMock62, CommentModelMock.CommentModelMock63, CommentModelMock.CommentModelMock64, CommentModelMock.CommentModelMock65, CommentModelMock.CommentModelMock66]
}


struct AuthorMock {
    static var author1 = Author(id: 1, profileImage: URL(string: "https://img.hankyung.com/photo/202102/AD.25456232.1.jpg"), name: "자취왕", specialDomain: [Category.livingAlone, Category.cook, Category.cleaning])
    static var author2 = Author(id: 2, profileImage: URL(string: "https://dimg.donga.com/wps/NEWS/IMAGE/2014/02/04/60569995.3.jpg"), name: "고라파덕", specialDomain: [Category.companionLife])
    static var author3 = Author(id: 3, profileImage: nil, name: "물위애동동", specialDomain: [])
    static var author4 = Author(id: 4, profileImage: nil, name: "minsu96", specialDomain: [])
    static var author5 = Author(id: 5, profileImage: nil, name: "봄봄봄", specialDomain: [Category.livingAlone])
    static var author6 = Author(id: 6, profileImage: URL(string: "https://cdn.crowdpic.net/detail-thumb/thumb_d_E2EEB7B49A4E6D7E44355FE4235DBB17.jpg"), name: "whitesky123", specialDomain: [])
    static var author7 = Author(id: 7, profileImage: nil, name: "서울여포", specialDomain: [])
    static var author8 = Author(id: 8, profileImage: nil, name: "나눔이", specialDomain: [Category.companionLife])
    static var author9 = Author(id: 9, profileImage: URL(string: "https://image-notepet.akamaized.net/resize/620x-/seimage/20180220%2Facb6381fef1e712ccc38f6469aec5422.jpg"), name: "잠실동집사", specialDomain: [Category.companionLife, Category.health])
    static var author10 = Author(id: 10, profileImage: URL(string: "https://t1.daumcdn.net/cfile/blog/242B904959643CE10E"), name: "puppy_love", specialDomain: [])
    static var author53 = Author(id: 53,
                                 profileImage: URL(string: "https://blog.kakaocdn.net/dn/dmzcxp/btqX826B16P/zUEIdmEYec7XLXKG1fghk1/img.jpg"),
                                 name: "보리아빠",
                                 specialDomain: [Category.companionLife])
    static var author54 = Author(id: 54, profileImage: nil, name: "자취자취", specialDomain: nil)
    static var author55 = Author(id: 55, profileImage: nil, name: "야옹", specialDomain: nil)
    static var author56 = Author(id: 56, profileImage: nil, name: "abc123", specialDomain: nil)
    static var author57 = Author(id: 57, profileImage: URL(string: "https://www.canceranswer.co.kr/news/photo/202109/3045_4820_1253.jpg"), name: "운동최고", specialDomain: [Category.health])
}

struct UserInfoMock{
    static var userInfo1 = UserInfo(id: 1, profileImage: URL(string: "https://img.hankyung.com/photo/202102/AD.25456232.1.jpg"), name: "자취왕", specialDomain: [Category.livingAlone, Category.cook, Category.cleaning], usefulPost: [], replyPost: [1], markPost: [], writtendPost: [1, 3], interestedTag: ["자취", "청소", "요리", "꿀팁Ca"], interestedCategory: [Category.livingAlone, Category.cleaning, Category.cook])
    static var userInfo2 = UserInfo(id: 2, profileImage: URL(string: "https://dimg.donga.com/wps/NEWS/IMAGE/2014/02/04/60569995.3.jpg"), name: "고라파덕", specialDomain: [Category.companionLife], usefulPost: [3], replyPost: [1,3], markPost: [1,3], writtendPost: [2], interestedTag: ["자취", "독립", "동물", "애완견"], interestedCategory: [Category.companionLife, Category.livingAlone])
    static var userInfo3 = UserInfo(id: 3, profileImage: nil, name: "물위애동동", specialDomain: [], usefulPost: [1,3], replyPost: [1,3], markPost: [3], writtendPost: [], interestedTag: ["자취", "독립", "동물", "애완견"], interestedCategory: [Category.companionLife, Category.livingAlone])
    static var userInfo4 = UserInfo(id: 4, profileImage: nil, name: "minsu96", specialDomain: [], usefulPost: [], replyPost: [2,4], markPost: [], writtendPost: [], interestedTag: ["자취", "독립", "동물", "애완견"], interestedCategory: [Category.companionLife, Category.livingAlone])
    static var userInfo5 = UserInfo(id: 5, profileImage: nil, name: "봄봄봄", specialDomain: [Category.livingAlone], usefulPost: [1,3], replyPost: [1,3], markPost: [1,3], writtendPost: [], interestedTag: ["자취", "독립", "동물", "애완견"], interestedCategory: [Category.companionLife, Category.livingAlone])
    static var userInfo6 = UserInfo(id: 6, profileImage: URL(string: "https://cdn.crowdpic.net/detail-thumb/thumb_d_E2EEB7B49A4E6D7E44355FE4235DBB17.jpg"), name: "whitesky123", specialDomain: [], usefulPost: [], replyPost: [2], markPost: [], writtendPost: [], interestedTag: ["자취", "독립", "동물", "애완견"], interestedCategory: [Category.companionLife, Category.livingAlone])
    static var userInfo7 = UserInfo(id: 7, profileImage: nil, name: "서울여포", specialDomain: [], usefulPost: [], replyPost: [2], markPost: [], writtendPost: [], interestedTag: ["자취", "독립", "동물", "애완견"], interestedCategory: [Category.companionLife, Category.livingAlone])
    static var userInfo8 = UserInfo(id: 8, profileImage: nil, name: "나눔이", specialDomain: [Category.companionLife], usefulPost: [], replyPost: [4], markPost: [4], writtendPost: [5], interestedTag: ["자취", "독립", "동물", "애완견"], interestedCategory: [Category.companionLife, Category.livingAlone])
    static var userInfo9 = UserInfo(id: 9, profileImage: URL(string: "https://image-notepet.akamaized.net/resize/620x-/seimage/20180220%2Facb6381fef1e712ccc38f6469aec5422.jpg"), name: "잠실동집사", specialDomain: [Category.companionLife, Category.health], usefulPost: [4], replyPost: [4], markPost: [], writtendPost: [], interestedTag: ["고양이", "운동"], interestedCategory: [Category.companionLife, Category.health])
    static var userInfo10 = UserInfo(id: 10, profileImage: URL(string: "https://t1.daumcdn.net/cfile/blog/242B904959643CE10E"), name: "puppy_love", specialDomain: [], usefulPost: [], replyPost: [], markPost: [], writtendPost: [4], interestedTag: ["강아지", "고양이"], interestedCategory: [Category.companionLife])
    static var userInfo53 = UserInfo(id: 53,
                              profileImage: URL(string: "https://blog.kakaocdn.net/dn/dmzcxp/btqX826B16P/zUEIdmEYec7XLXKG1fghk1/img.jpg"),
                              name: "보리아빠",
                              specialDomain: [Category.companionLife],
                              usefulPost: [57],
                              replyPost: [53, 54, 55],
                              markPost: nil,
                              writtendPost: [53],
                              interestedTag: ["강아지", "산책", "반려동물"],
                              interestedCategory: [Category.companionLife, Category.cook, Category.health])
    static var userInfo54 = UserInfo(id: 54,
                              profileImage: nil,
                              name: "자취자취",
                              specialDomain: nil,
                              usefulPost: [53, 54, 57],
                              replyPost: [53, 54, 55],
                              markPost: [54],
                              writtendPost: [55],
                              interestedTag: ["자취", "운동", "연애", "대학"],
                              interestedCategory: [Category.livingAlone, Category.campusLife])
    static var userInfo55 = UserInfo(id: 55,
                              profileImage: nil,
                              name: "야옹",
                              specialDomain: nil,
                              usefulPost: [57],
                              replyPost: [53, 54, 56],
                              markPost: nil,
                              writtendPost: [56],
                              interestedTag: ["고양이", "집사", "동물"],
                              interestedCategory: [Category.livingAlone, Category.companionLife, Category.hobby])
    static var userInfo56 = UserInfo(id: 56,
                              profileImage: nil,
                              name: "abc123",
                              specialDomain: nil,
                              usefulPost: [56, 57],
                              replyPost: [53, 56, 57],
                              markPost: nil,
                              writtendPost: [57],
                              interestedTag: ["자취", "갓생", "집밥"],
                              interestedCategory: [Category.campusLife, Category.cook, Category.livingAlone])
    static var userInfo57 = UserInfo(id: 57,
                              profileImage: URL(string: "https://www.canceranswer.co.kr/news/photo/202109/3045_4820_1253.jpg"),
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
    static var comment1_1 = CommentModel(
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
    static var comment1_2 = CommentModel(
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
    static var comment1_3 = CommentModel(
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
    static var comment1_4 = CommentModel(
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
    static var comment1_5 = CommentModel(
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
    static var comment1_6 = CommentModel(
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
    static var comment2_1 = CommentModel(
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
    static var comment2_2 = CommentModel(
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
    static var comment2_3 = CommentModel(
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
    static var comment3_1 = CommentModel(
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
    static var comment3_2 = CommentModel(
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
    static var comment3_3 = CommentModel(
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
    static var comment3_4 = CommentModel(
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
    static var comment4_1 = CommentModel(
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
    static var comment4_2 = CommentModel(
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
    static var comment4_3 = CommentModel(
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
    static var CommentModelMock53 = CommentModel(id: 1, postId: 53, commentId: nil, isAnonymous: false, author: AuthorMock.author53, content: "~~하는 법에 의거 일단 우리집 강아지 사진 올렸습니다 ㅋㅋ", isReply: false, createdAt: Calendar.current.date(from: DateComponents(year: 2022, month: 3, day: 25, hour: 20, minute: 25))!, usefulCount: 1)
    static var CommentModelMock54 = CommentModel(id: 2, postId: 53, commentId: 1, isAnonymous: false, author: AuthorMock.author54, content: "흑흑 너무 귀엽네요", isReply: true, createdAt: Calendar.current.date(from: DateComponents(year: 2022, month: 3, day: 25, hour: 21, minute: 20))!, usefulCount: 0)
    static var CommentModelMock55 = CommentModel(id: 3, postId: 53, commentId: 1, isAnonymous: false, author: AuthorMock.author55, content: "와 몇 살이예요?", isReply: true, createdAt: Calendar.current.date(from: DateComponents(year: 2022, month: 3, day: 25, hour: 21, minute: 25))!, usefulCount: 0)
    static var CommentModelMock56 = CommentModel(id: 4, postId: 53, commentId: 1, isAnonymous: true, author: AuthorMock.author56, content: "저도 개 키우고 싶은데 ㅠㅠ", isReply: true, createdAt: Calendar.current.date(from: DateComponents(year: 2022, month: 3, day: 25, hour: 22, minute: 20))!, usefulCount: 0)
    static var CommentModelMock57 = CommentModel(id: 5, postId: 53, commentId: nil, isAnonymous: true, author: AuthorMock.author57, content: "와 추천 박고 갑니다!!", isReply: false, createdAt: Calendar.current.date(from: DateComponents(year: 2022, month: 3, day: 27, hour: 20, minute: 20))!, usefulCount: 0)
    static var CommentModelMock58 = CommentModel(id: 1, postId: 54, commentId: nil, isAnonymous: false, author: AuthorMock.author54, content: "헐 키우시다가 물린 적 있으신가요...? 걱정되네요 갑자기 ㅠ", isReply: false, createdAt: Calendar.current.date(from: DateComponents(year: 2022, month: 4, day: 1, hour: 20, minute: 32))!, usefulCount: 0)
    static var CommentModelMock59 = CommentModel(id: 2, postId: 54, commentId: 1, isAnonymous: false, author: AuthorMock.author53, content: "저희 부모님이 물린 적이 계셔서 ㅠㅠ 키우시는 분들은 조심하셔야 합니다!!", isReply: true, createdAt: Calendar.current.date(from: DateComponents(year: 2022, month: 4, day: 1, hour: 20, minute:40))!, usefulCount: 0)
    static var CommentModelMock60 = CommentModel(id: 3, postId: 54, commentId: nil, isAnonymous: true, author: AuthorMock.author55, content: "헉 저도 어렸을 때 물린 경험이 떠오르네요", isReply: false, createdAt: Calendar.current.date(from: DateComponents(year: 2022, month: 4, day: 3, hour: 20, minute: 12))!, usefulCount: 0)
    static var CommentModelMock61 = CommentModel(id: 1, postId: 55, commentId: nil, isAnonymous: false, author: AuthorMock.author53, content: "여기로 한 번 들어가보실래요??", isReply: false, createdAt: Calendar.current.date(from: DateComponents(year: 2022, month: 4, day: 1, hour: 22, minute: 34))!, usefulCount: 0)
    static var CommentModelMock62 = CommentModel(id: 2, postId: 55, commentId: 1, isAnonymous: false, author: AuthorMock.author54, content: "ㅠㅠ 링크가 없습니다..", isReply: true, createdAt: Calendar.current.date(from: DateComponents(year: 2022, month: 4, day: 2, hour: 21, minute: 34))!, usefulCount: 0)
    static var CommentModelMock63 = CommentModel(id: 1, postId: 56, commentId: nil, isAnonymous: false, author: AuthorMock.author56, content: "팔굽혀펴기 하루에 3세트 ㄱㄱ", isReply: false, createdAt: Calendar.current.date(from: DateComponents(year: 2022, month: 4, day: 2, hour: 15, minute: 40))!, usefulCount: 0)
    static var CommentModelMock64 = CommentModel(id: 2, postId: 56, commentId: 1, isAnonymous: false, author: AuthorMock.author55, content: "어떤 자세로 하는 게 가장 좋나요??", isReply: true, createdAt: Calendar.current.date(from: DateComponents(year: 2022, month: 4, day: 2, hour: 16, minute: 10))!, usefulCount: 0)
    static var CommentModelMock65 = CommentModel(id: 1, postId: 57, commentId: nil, isAnonymous: false, author: AuthorMock.author56, content: "다른 운동 방법이나 기구 추천하실 분 있나요???", isReply: false, createdAt: Calendar.current.date(from: DateComponents(year: 2022, month: 4, day: 3, hour: 20, minute: 01))!, usefulCount: 0)
    static var CommentModelMock66 = CommentModel(id: 2, postId: 57, commentId: 1, isAnonymous: false, author: AuthorMock.author57, content: "흠 푸쉬업 어떠신가요?", isReply: true, createdAt: Calendar.current.date(from: DateComponents(year: 2022, month: 4, day: 4, hour: 20, minute: 01))!, usefulCount: 0)
}

struct DetailPostMock {
    static var detailedPost1 = DetailPostModel(
        id: 1,
        category: Category.livingAlone,
        isAnonymous: false,
        title: "오늘의 자취 꿀팁 시리즈2",
        content: "안녕하세요 자취왕입니다. 오늘은 자취할 때 먹기 좋은 음식에 대해 알려드리겠습니다. 우선 제일 추천하는 음식은 역시 간장계란밥입니다! 그외에도 시리얼, 감자전 등등이 있습니다.",
        author: AuthorMock.author1,
        createdAt: Calendar.current.date(from: DateComponents(year: 2022, month: 3, day: 17, hour: 14, minute: 17))!,
        images: [URL(string: "https://t1.daumcdn.net/cfile/tistory/99189B4D5E3517292D"), URL(string: "http://weekly.chosun.com/up_fd/wc_news/2653/bimg_org/2653_on6.jpg"), URL(string: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTnzM4jTazackQ05MqrX2Mf7UyHPrpJgoZJxg&usqp=CAU")],
        tags: ["꿀팁 시리즈", "자취 요리"],
        usefulCount: 5,
        comment: [CommentModelMock.comment1_1, CommentModelMock.comment1_2, CommentModelMock.comment1_3, CommentModelMock.comment1_4, CommentModelMock.comment1_5, CommentModelMock.comment1_6],
        idWithUseful: [3, 5],
        idWithReply: [1, 2, 3, 5],
        idWithMark: [2, 5]
    )
    static var detailedPost2 = DetailPostModel(
        id: 2,
        category: Category.livingAlone,
        isAnonymous: true,
        title: "자취생들아... 진심 바선생은 전설이다..",
        content: "바선생을 보지 않는 법이 궁금하십니까?? 그건 답이 없습니다. 돈을 쏟아부으십시오. 바선생이 있는 지 확인하는 방법: 버섯을 물에 불린다. 몰려드는 바선생을 구경한다.",
        author: AuthorMock.author2,
        createdAt: Calendar.current.date(from: DateComponents(year: 2022, month: 3, day: 19, hour: 18, minute: 42))!,
        images: [],
        tags: ["바선생", "바퀴벌레 퇴치법", "자취 벌레"],
        usefulCount: 2,
        comment: [CommentModelMock.comment2_1, CommentModelMock.comment2_2, CommentModelMock.comment2_3],
        idWithUseful: [],
        idWithReply: [4,6,7],
        idWithMark: []
    )
    static var detailedPost3 = DetailPostModel(
        id: 3,
        category: Category.livingAlone,
        isAnonymous: false,
        title: "오늘의 자취 꿀팁 시리즈3",
        content: "안녕하세요 자취왕입니다. 오늘은 자취할 장소를 고르는 팁을 알려드리겠습니다. 개인적으로 제일 중요하게 생각하는 것은 상가와의 거리입니다.",
        author: AuthorMock.author1,
        createdAt: Calendar.current.date(from: DateComponents(year: 2022, month: 3, day: 24, hour: 15, minute: 02))!,
        images: [URL(string: "https://www.seoulfn.com/news/photo/202006/384499_164020_3214.jpg"), URL(string: "https://tgzzmmgvheix1905536.cdn.ntruss.com/2020/12/0bb7445853f545c4ac0febf9805ba2bd")],
        tags: ["꿀팁 시리즈", "자취 위치"],
        usefulCount: 5,
        comment: [CommentModelMock.comment3_1, CommentModelMock.comment3_2, CommentModelMock.comment3_3, CommentModelMock.comment3_4],
        idWithUseful: [2, 3, 5],
        idWithReply: [2, 3, 5],
        idWithMark: [2, 3, 5]
    )
    static var detailedPost4 = DetailPostModel(
        id: 4,
        category: Category.companionLife,
        isAnonymous: true,
        title: "저희 강아지가 허공에 짖어요",
        content: "안녕하세요, 저희 강아지가 어느날부터 갑자기 아무도 없는 곳을 바라보고 짖더라고요.. 뭐가 있나 싶어서 확인도 해봤지만 아무것도 안나왔어요. 혹시 왜 이러는지 아시는 분 있을까요?",
        author: AuthorMock.author10,
        createdAt: Calendar.current.date(from: DateComponents(year: 2022, month: 3, day: 27, hour: 11, minute: 18))!,
        images: [URL(string: "http://image.dongascience.com/Photo/2020/03/5bddba7b6574b95d37b6079c199d7101.jpg")],
        tags: [],
        usefulCount: 2,
        comment: [CommentModelMock.comment4_1, CommentModelMock.comment4_2, CommentModelMock.comment4_3],
        idWithUseful: [9],
        idWithReply: [4, 8, 9],
        idWithMark: [8]
    )
    static var detailedPost5 = DetailPostModel(
        id: 5,
        category: Category.companionLife,
        isAnonymous: false,
        title: "강아지 첫 목욕",
        content: "강아지 첫 목욕을 어떻게 해야할지 고민하는 분들이 많이 보이더라고요. 우선은 미지근한 물을 대야에 받아놓아야 해요. 그리고 강아지가 놀라지 않도록 조금씩 손으로 퍼서 몸을 적셔주세요",
        author: AuthorMock.author8,
        createdAt: Calendar.current.date(from: DateComponents(year: 2022, month: 3, day: 28, hour: 14, minute: 22))!,
        images: [],
        tags: ["강아지 목욕", "새끼 강아지"],
        usefulCount: 0,
        comment: [],
        idWithUseful: [],
        idWithReply: [],
        idWithMark: []
    )
    static var DetailPostMock53 = DetailPostModel(id: 53,
                                           category: Category.companionLife,
                                           isAnonymous: false,
                                           title: "강아지 첫 산책시키는 법",
                                           content: "안녕하세요, 현재 말티푸와 함께 지내고 있는 견주입니다.\n강아지의 첫산책을 어떻게 해야하는지 걱정하는 분들이 많더라고요.\n우선은 강아지가 겁먹지 않게 자극적이지 않은, 조용한 환경에서부터 산책을 시작하고 점점 새로운 장소로 나아가는 것이 좋답니다.\nㅋㅋㅋ 강아지 때부터 산책을 잘 하는 습관을 들여야 적응한 이후에도 건강한 생활 습관을 가질 수 있습니다. 산책하는 데 익숙해지시면 건강에도 좋답니다!",
                                           author: AuthorMock.author53,
                                           createdAt: Calendar.current.date(from: DateComponents(year: 2022, month: 3, day: 25, hour: 20, minute: 20))!,
                                           images: [URL(string: "https://static.dogmate.co.kr/blog/wp-content/uploads/2019/04/25165439/image_6552724361539941650988.jpg")],
                                           tags: ["강아지", "힐링", "산책", "건강"],
                                           usefulCount: 2,
                                           comment: [CommentModelMock.CommentModelMock53, CommentModelMock.CommentModelMock54, CommentModelMock.CommentModelMock55, CommentModelMock.CommentModelMock56, CommentModelMock.CommentModelMock57],
                                           idWithUseful: [54, 57],
                                           idWithReply: [53, 54, 55, 56, 57],
                                           idWithMark: [57])
    static var DetailPostMock54 = DetailPostModel(id: 54,
                                           category: Category.companionLife,
                                           isAnonymous: false,
                                           title: "강아지가 깨물때 대처법",
                                           content: "안녕하세요, 현재 말티푸와 함께 지내고 있는 견주입니다.\n어린 강아지들이 손을 깨물 때 귀엽다고 그냥 넘어가시면 안됩니다.\n제가 추천하는 방법은 손을 얼른 빼고 다른 장난감으로 놀아주는 것입니다.\n손은 장난감이 아니라는 것을 인식시켜주는 것이지요.\n성견이 되었을 때 물린다면 ...끔찍하군요 ㅠㅠ 그런 일이 생기지 않도록 주의합시다!",
                                           author: AuthorMock.author53,
                                           createdAt: Calendar.current.date(from: DateComponents(year: 2022, month: 4, day: 1, hour: 20, minute: 12))!,
                                           images: [URL(string: "https://t1.daumcdn.net/cfile/tistory/1154274F4F26BD861E")],
                                           tags: ["강아지", "힐링", "양육방법"],
                                           usefulCount: 3,
                                           comment: [CommentModelMock.CommentModelMock58, CommentModelMock.CommentModelMock59, CommentModelMock.CommentModelMock60],
                                           idWithUseful: [54],
                                           idWithReply: [53, 54, 55],
                                           idWithMark: [54])
    static var DetailPostMock55 = DetailPostModel(id: 55,
                                                  category: Category.companionLife,
                                                  isAnonymous: false,
                                                  title: "고양이랑 친해지려면 어떻게 해야하나요?",
                                                  content: "안녕하세요! 고양이를 분양 받은지 얼마 안된 새내기 집사입니다. 열심히 책하고 인터넷 보면서 잘 돌봐주려고 공부하고 있는데, 경계심이 많은 아이인지 다가가기가 쉽지 않더라고요.. 혹시 친해치는 팁 같은게 있을까요? 감사합니다.",
                                                  author: AuthorMock.author54,
                                                  createdAt: Calendar.current.date(from: DateComponents(year: 2022, month: 4, day: 1, hour: 21, minute: 34))!,
                                                  images: [],
                                                  tags: ["고양이", "집사", "갓냥이"],
                                                  usefulCount: 0,
                                                  comment: [CommentModelMock.CommentModelMock61, CommentModelMock.CommentModelMock62],
                                                  idWithUseful: nil,
                                                  idWithReply: [53, 54],
                                                  idWithMark: nil)
    static var DetailPostMock56 = DetailPostModel(id: 56,
                                                  category: Category.livingAlone,
                                                  isAnonymous: true,
                                                  title: "자취생 집에서 할만한 운동?",
                                                  content: "평소에 헬스장 열심히 가다가 코로나에 걸려서 집에서 격리하게 됐는데, 혹시 방안에서 할만한 운동이 있는지 조언을 듣고싶습니다. 홈트 + 자취생 읽어주세요!!",
                                                  author: AuthorMock.author55,
                                                  createdAt: Calendar.current.date(from: DateComponents(year: 2022, month: 4, day: 2, hour: 15, minute: 10))!,
                                                  images: [],
                                                  tags: ["운동", "자취", "홈트", "혼자운동"],
                                                  usefulCount: 2,
                                                  comment: [CommentModelMock.CommentModelMock63, CommentModelMock.CommentModelMock64],
                                                  idWithUseful: [55, 56],
                                                  idWithReply: [55, 56],
                                                  idWithMark: nil)
    static var DetailPostMock57 = DetailPostModel(id: 57,
                                                  category: Category.livingAlone,
                                                  isAnonymous: false,
                                                  title: "자취생 집에서 하기 좋은 운동 모음",
                                                  content: "요즘 코로나 때문에 헬스장 다니기도 힘드시죠?\n그런분들을 위해 집에서 간단하게 할 수 있는 맨몸 운동들을 알려주려 합니다.\n우선 제일 추천하는 것은 스쿼트입니다.\n참고로 스쿼트는 다리 뿐만 아니라 여러 근육을 강화할 수 있는 전신운동입니다. 자취생 필독!",
                                                  author: AuthorMock.author56,
                                                  createdAt: Calendar.current.date(from: DateComponents(year: 2022, month: 4, day: 2, hour: 20, minute: 01))!,
                                                  images: [],
                                                  tags: ["자취", "운동", "홈트"],
                                                  usefulCount: 2,
                                                  comment: [CommentModelMock.CommentModelMock65, CommentModelMock.CommentModelMock66],
                                                  idWithUseful: [53, 54, 55, 56, 57],
                                                  idWithReply: [55, 56],
                                                  idWithMark: nil)
}

struct BoardPostMock {
    static var boardPost1 = BoardPost(
        id: 1,
        isAnonymous: false,
        title: "오늘의 자취 꿀팁 시리즈2",
        content: "안녕하세요 자취왕입니다. 오늘은 자취할 때 먹기 좋은 음식에 대해 알려드리겠습니다. 우선 제일 추천하는 음식은 역시 간장계란밥입니다! 그외에도 시리얼, 감자전 등등이 있습니다.",
        author: AuthorMock.author1,
        createdAt: Calendar.current.date(from: DateComponents(year: 2022, month: 3, day: 17, hour: 14, minute: 17))!,
        thumnailImageUrl: URL(string: "https://t1.daumcdn.net/cfile/tistory/99189B4D5E3517292D"),
        usefulCount: 5,
        replyCount: 6,
        tag: ["꿀팁 시리즈", "자취 요리"],
        category: Category.livingAlone
    )
    static var boardPost2 = BoardPost(
        id: 2,
        isAnonymous: true,
        title: "자취생들아... 진심 바선생은 전설이다..",
        content: "바선생을 보지 않는 법이 궁금하십니까?? 그건 답이 없습니다. 돈을 쏟아부으십시오. 바선생이 있는 지 확인하는 방법: 버섯을 물에 불린다. 몰려드는 바선생을 구경한다.",
        author: AuthorMock.author2,
        createdAt: Calendar.current.date(from: DateComponents(year: 2022, month: 3, day: 19, hour: 18, minute: 42))!,
        thumnailImageUrl: nil,
        usefulCount: 2,
        replyCount: 3,
        tag: ["바선생", "바퀴벌레 퇴치법", "자취 벌레"],
        category: Category.livingAlone
    )
    static var boardPost3 = BoardPost(
        id: 3,
        isAnonymous: false,
        title: "오늘의 자취 꿀팁 시리즈3",
        content: "안녕하세요 자취왕입니다. 오늘은 자취할 장소를 고르는 팁을 알려드리겠습니다. 개인적으로 제일 중요하게 생각하는 것은 상가와의 거리입니다.",
        author: AuthorMock.author1,
        createdAt: Calendar.current.date(from: DateComponents(year: 2022, month: 3, day: 24, hour: 15, minute: 02))!,
        thumnailImageUrl: URL(string: "https://www.seoulfn.com/news/photo/202006/384499_164020_3214.jpg"),
        usefulCount: 5,
        replyCount: 4,
        tag: ["꿀팁 시리즈", "자취 위치"],
        category: Category.livingAlone
    )
    static var boardPost4 = BoardPost(
        id: 4,
        isAnonymous: true,
        title: "저희 강아지가 허공에 짖어요",
        content: "안녕하세요, 저희 강아지가 어느날부터 갑자기 아무도 없는 곳을 바라보고 짖더라고요.. 뭐가 있나 싶어서 확인도 해봤지만 아무것도 안나왔어요. 혹시 왜 이러는지 아시는 분 있을까요?",
        author: AuthorMock.author10,
        createdAt: Calendar.current.date(from: DateComponents(year: 2022, month: 3, day: 27, hour: 11, minute: 18))!,
        thumnailImageUrl: URL(string: "http://image.dongascience.com/Photo/2020/03/5bddba7b6574b95d37b6079c199d7101.jpg"),
        usefulCount: 2,
        replyCount: 3,
        tag: [],
        category: Category.companionLife
    )
    static var boardPost5 = BoardPost(
        id: 5,
        isAnonymous: false,
        title: "강아지 첫 목욕",
        content: "강아지 첫 목욕을 어떻게 해야할지 고민하는 분들이 많이 보이더라고요. 우선은 미지근한 물을 대야에 받아놓아야 해요. 그리고 강아지가 놀라지 않도록 조금씩 손으로 퍼서 몸을 적셔주세요",
        author: AuthorMock.author8,
        createdAt: Calendar.current.date(from: DateComponents(year: 2022, month: 3, day: 28, hour: 14, minute: 22))!,
        thumnailImageUrl: nil,
        usefulCount: 0,
        replyCount: 0,
        tag: ["강아지 목욕", "새끼 강아지"],
        category: Category.companionLife
    )
    static var boardPost53 = BoardPost(id: 53,
                                       isAnonymous: false,
                                       title: "강아지 첫 산책시키는법",
                                       content:
"안녕하세요, 현재 말티푸와 함께 지내고 있는 견주입니다.\n강아지의 첫산책을 어떻게 해야하는지 걱정하는 분들이 많더라고요.\n우선은 강아지가 겁먹지 않게 자극적이지 않은, 조용한 환경에서부터 산책을 시작하고 점점 새로운 장소로 나아가는 것이 좋답니다.",
                                       author: AuthorMock.author53,
                                       createdAt: Calendar.current.date(from: DateComponents(year: 2022, month: 3, day: 25, hour: 20, minute: 20))!,
                                       thumnailImageUrl: URL(string: "https://static.dogmate.co.kr/blog/wp-content/uploads/2019/04/25165439/image_6552724361539941650988.jpg"),
                                       usefulCount: 2,
                                       replyCount: 5,
                                       tag:["강아지", "힐링", "산책", "건강"],
                                       category:Category.companionLife)
    static var boardPost54 = BoardPost(id: 54,
                                       isAnonymous: false,
                                       title: "강아지가 깨물때 대처법",
                                       content: "안녕하세요, 현재 말티푸와 함께 지내고 있는 견주입니다.\n어린 강아지들이 손을 깨물 때 귀엽다고 그냥 넘어가시면 안됩니다.\n제가 추천하는 방법은 손을 얼른 빼고 다른 장난감으로 놀아주는 것입니다.\n손은 장난감이 아니라는 것을 인식시켜주는 것이지요.",
                                       author: AuthorMock.author53,
                                       createdAt: Calendar.current.date(from: DateComponents(year: 2022, month: 4, day: 1, hour: 20, minute: 12))!,
                                       thumnailImageUrl: URL(string: "https://t1.daumcdn.net/cfile/tistory/1154274F4F26BD861E"),
                                       usefulCount: 3,
                                       replyCount: 3,
                                       tag:["강아지", "힐링", "양육방법"],
                                       category: Category.companionLife)
    static var boardPost55 = BoardPost(id: 55,
                                       isAnonymous: true,
                                       title: "고양이랑 친해지려면 어떻게 해야하나요?",
                                       content: "안녕하세요! 고양이를 분양 받은지 얼마 안된 새내기 집사입니다. 열심히 책하고 인터넷 보면서 잘 돌봐주려고 공부하고 있는데, 경계심이 많은 아이인지 다가가기가 쉽지 않더라고요.. 혹시 친해치는 팁 같은게 있을까요?",
                                       author: AuthorMock.author54,
                                       createdAt: Calendar.current.date(from: DateComponents(year: 2022, month: 4, day: 1, hour: 21, minute: 34))!,
                                       thumnailImageUrl: nil,
                                       usefulCount: 0,
                                       replyCount: 2,
                                       tag:["고양이", "집사", "갓냥이"],
                                       category: Category.companionLife)
    static var boardPost56 = BoardPost(id: 56,
                                       isAnonymous: true,
                                       title: "자취생 집에서 할만한 운동?",
                                       content: "평소에 헬스장 열심히 가다가 코로나에 걸려서 집에서 격리하게 됐는데, 혹시 방안에서 할만한 운동이 있는지 조언을 듣고싶습니다. 홈트 + 자취생 읽어주세요!!",
                                       author: AuthorMock.author55,
                                       createdAt: Calendar.current.date(from: DateComponents(year: 2022, month: 4, day: 2, hour: 15, minute: 10))!,
                                       thumnailImageUrl: nil,
                                       usefulCount: 2,
                                       replyCount: 2,
                                       tag:["운동", "자취", "홈트", "혼자운동"],
                                       category: Category.livingAlone)
    static var boardPost57 = BoardPost(id: 57,
                                       isAnonymous: false,
                                       title: "자취생 집에서 하기 좋은 운동 모음",
                                       content: "요즘 코로나 때문에 헬스장 다니기도 힘드시죠?\n그런분들을 위해 집에서 간단하게 할 수 있는 맨몸 운동들을 알려주려 합니다.\n우선 제일 추천하는 것은 스쿼트입니다.\n참고로 스쿼트는 다리 뿐만 아니라 여러 근육을 강화할 수 있는 전신운동입니다. 자취생 필독!",
                                       author: AuthorMock.author56,
                                       createdAt: Calendar.current.date(from: DateComponents(year: 2022, month: 4, day: 2, hour: 20, minute: 01))!,
                                       thumnailImageUrl: nil,
                                       usefulCount: 5,
                                       replyCount: 2,
                                       tag:["자취", "운동", "홈트"],
                                       category: Category.livingAlone)
//    static var boardPost58 = BoardPost(id: 58,
//                                       isAnonymous: true,
//                                       title: "운동으로 걷기, 달리기 중 어떤게 좋나요?",
//                                       content: "요즘 시간이 남아서 가볍게 운동을 시작해보려 합니다.\n마침 저희 집 앞에 긴 산책로도 있고 해서 걷기나 달리기를 해볼까 하는데 어떤 게 더 건강에 좋을까요?",
//                                       author: AuthorMock.author56,
//                                       createdAt: Calendar.current.date(from: DateComponents(year: 2022, month: 4, day: 3, hour: 11, minute: 57))!,
//                                       thumnailImageUrl: nil,
//                                       usefulCount: 2,
//                                       replyCount: 5)
//    static var boardPost59 = BoardPost(id: 59,
//                                       isAnonymous: false,
//                                       title: "걷기 vs 달리기",
//                                       content: "관련 글을 보게 되어서 정리를 하려 합니다.\n걷기와 달리기는 각각 특징이 있습니다.\n극단적으로 단점만 얘기하자면 걷기는 효율이 낮고 달리기는 몸에 무리가 갑니다.\n따라서 제가 추천하는 것은 빨리걷기 입니다.",
//                                       author: AuthorMock.author55,
//                                       createdAt: Calendar.current.date(from: DateComponents(year: 2022, month: 4, day: 3, hour: 15, minute: 10))!,
//                                       thumnailImageUrl: nil,
//                                       usefulCount: 8,
//                                       replyCount: 6)
//    static var boardPost60 = BoardPost(id: 60,
//                                       isAnonymous: false,
//                                       title: "고양이가 먹이를 안먹습니다ㅠㅠ",
//                                       content: "안녕하세요, 오늘 아침에 저희 고양이에게 먹이를 주는데 먹지를 않더라고요.. 평소에는 주자마자 허겁지겁 먹던 아이인데 이런 적은 처음이라서 당황스럽네요ㅠㅠㅠ 어디가 아픈걸까요? 혹시 이런 경험 있으신 분들 있을까요?",
//                                       author: AuthorMock.author57,
//                                       createdAt: Calendar.current.date(from: DateComponents(year: 2022, month: 4, day: 5, hour: 11, minute: 50))!,
//                                       thumnailImageUrl: nil,
//                                       usefulCount: 2,
//                                       replyCount: 4)
}
