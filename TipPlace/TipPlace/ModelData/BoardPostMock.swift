//
//  BoardPostMock.swift
//  TipPlace
//
//  Created by Junyeong Park on 2022/04/15.
//

import Foundation

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
        tag: ["꿀팁 시리즈", "자취 요리", "자취"],
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
        tag: ["바선생", "바퀴벌레 퇴치법", "자취 벌레", "자취"],
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
        tag: ["꿀팁 시리즈", "자취 위치", "자취"],
        category: Category.livingAlone
    )
    static var boardPost4 = BoardPost(
        id: 4,
        isAnonymous: true,
        title: "저희 강아지가 허공에 짖어요",
        content: "안녕하세요, 저희 강아지가 어느날부터 갑자기 아무도 없는 곳을 바라보고 짖더라고요.. 뭐가 있나 싶어서 확인도 해봤지만 아무것도 안나왔어요. 혹시 왜 이러는지 아시는 분 있을까요?",
        author: AuthorMock.author10,
        createdAt: Calendar.current.date(from: DateComponents(year: 2022, month: 3, day: 27, hour: 11, minute: 18))!,
        thumnailImageUrl: URL(string: """
http://image.dongascience.com/Photo/2020/03/5bddba7b6574b95d37b6079c199d7101.jpg
"""),
        usefulCount: 2,
        replyCount: 3,
        tag: [],
        category: Category.companionLife
    )
    static var boardPost5 = BoardPost(
        id: 5,
        isAnonymous: false,
        title: "강아지 첫 목욕",
        content: """
강아지 첫 목욕을 어떻게 해야할지 고민하는 분들이 많이 보이더라고요. 우선은 미지근한 물을 대야에 받아놓아야 해요. 그리고 강아지가 놀라지 않도록 조금씩 손으로 퍼서 몸을 적셔주세요
""",
        author: AuthorMock.author8,
        createdAt: Calendar.current.date(from: DateComponents(year: 2022, month: 3, day: 28, hour: 14, minute: 22))!,
        thumnailImageUrl: nil,
        usefulCount: 0,
        replyCount: 0,
        tag: ["강아지", "강아지 목욕", "새끼 강아지"],
        category: Category.companionLife
    )
    static var boardPost53 = BoardPost(id: 53,
                                       isAnonymous: false,
                                       title: "강아지 첫 산책시키는법",
                                       content:
"""
안녕하세요, 현재 말티푸와 함께 지내고 있는 견주입니다.\n강아지의 첫산책을 어떻게 해야하는지 걱정하는 분들이 많더라고요.
\n우선은 강아지가 겁먹지 않게 자극적이지 않은,
조용한 환경에서부터 산책을 시작하고 점점 새로운 장소로 나아가는 것이 좋답니다.
""",
                                       author: AuthorMock.author53,
                                       createdAt:
Calendar.current.date(from: DateComponents(year: 2022, month: 3, day: 25, hour: 20, minute: 20))!,
                                       thumnailImageUrl: URL(string:
"https://static.dogmate.co.kr/blog/wp-content/uploads/2019/04/25165439/image_6552724361539941650988.jpg"),
                                       usefulCount: 2,
                                       replyCount: 5,
                                       tag: ["강아지", "힐링", "산책", "건강"],
                                       category: Category.companionLife)
    static var boardPost54 = BoardPost(id: 54,
                                       isAnonymous: false,
                                       title: "강아지가 깨물때 대처법",
                                       content: """
안녕하세요, 현재 말티푸와 함께 지내고 있는 견주입니다.
\n어린 강아지들이 손을 깨물 때 귀엽다고 그냥 넘어가시면 안됩니다.
\n제가 추천하는 방법은 손을 얼른 빼고 다른 장난감으로 놀아주는 것입니다.
\n손은 장난감이 아니라는 것을 인식시켜주는 것이지요.
""",
                                       author: AuthorMock.author53,
                                       createdAt:
    Calendar.current.date(from: DateComponents(year: 2022, month: 4, day: 1, hour: 20, minute: 12))!,
                                       thumnailImageUrl:
                                        URL(string: """
https://t1.daumcdn.net/cfile/tistory/1154274F4F26BD861E
"""),
                                       usefulCount: 3,
                                       replyCount: 3,
                                       tag: ["강아지", "힐링", "양육방법"],
                                       category: Category.companionLife)
    static var boardPost55 = BoardPost(id: 55,
                                       isAnonymous: true,
                                       title: "고양이랑 친해지려면 어떻게 해야하나요?",
                                       content: """
안녕하세요! 고양이를 분양 받은지 얼마 안된 새내기 집사입니다. 열심히 책하고 인터넷 보면서 잘 돌봐주려고 공부하고 있는데, 경계심이 많은 아이인지 다가가기가 쉽지 않더라고요.. 혹시 친해치는 팁 같은게 있을까요?
""",
                                       author: AuthorMock.author54,
                                       createdAt:
    Calendar.current.date(from: DateComponents(year: 2022, month: 4, day: 1, hour: 21, minute: 34))!,
                                       thumnailImageUrl: nil,
                                       usefulCount: 0,
                                       replyCount: 2,
                                       tag: ["고양이", "집사", "갓냥이"],
                                       category: Category.companionLife)
    static var boardPost56 = BoardPost(id: 56,
                                       isAnonymous: true,
                                       title: "자취생 집에서 할만한 운동?",
                                       content: """
평소에 헬스장 열심히 가다가 코로나에 걸려서 집에서 격리하게 됐는데, 혹시 방안에서 할만한 운동이 있는지 조언을 듣고싶습니다. 홈트 + 자취생 읽어주세요!!
""",
                                       author: AuthorMock.author55,
                                       createdAt:
    Calendar.current.date(from: DateComponents(year: 2022, month: 4, day: 2, hour: 15, minute: 10))!,
                                       thumnailImageUrl: nil,
                                       usefulCount: 2,
                                       replyCount: 2,
                                       tag: ["운동", "자취", "홈트", "혼자운동"],
                                       category: Category.livingAlone)
    static var boardPost57 = BoardPost(id: 57,
                                       isAnonymous: false,
                                       title: "자취생 집에서 하기 좋은 운동 모음",
                                       content: """
요즘 코로나 때문에 헬스장 다니기도 힘드시죠?
\n그런분들을 위해 집에서 간단하게 할 수 있는 맨몸 운동들을 알려주려 합니다.
\n우선 제일 추천하는 것은 스쿼트입니다.
\n참고로 스쿼트는 다리 뿐만 아니라 여러 근육을 강화할 수 있는 전신운동입니다. 자취생 필독!
""",
                                       author: AuthorMock.author56,
                                       createdAt:
   Calendar.current.date(from: DateComponents(year: 2022, month: 4, day: 2, hour: 20, minute: 01))!,
                                       thumnailImageUrl: nil,
                                       usefulCount: 5,
                                       replyCount: 2,
                                       tag: ["자취", "운동", "홈트"],
                                       category: Category.livingAlone)
}
