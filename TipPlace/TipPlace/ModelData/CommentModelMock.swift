//
//  CommentModelMock.swift
//  TipPlace
//
//  Created by Junyeong Park on 2022/04/16.
//

import Foundation

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
