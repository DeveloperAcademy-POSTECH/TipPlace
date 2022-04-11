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
    static var boardPosts: [BoardPost] =
    [BoardPostMock.boardPost1, BoardPostMock.boardPost51, BoardPostMock.boardPost52,
     BoardPostMock.boardPost53, BoardPostMock.boardPost54, BoardPostMock.boardPost55,
     BoardPostMock.boardPost56, BoardPostMock.boardPost57, BoardPostMock.boardPost58]
}

struct AuthorMock {
    static var author1 = Author(id: 2, profileImage: nil, name: "작성자1", specialDomain: [1])
    static var rec1 = Author(id: 1, profileImage: nil, name: "자취왕", specialDomain: [1])
    static var rec2 = Author(id: 2, profileImage: nil, name: "자취왕2", specialDomain: [1, 2])
    static var author51 = Author(id: 51,
                                 profileImage: URL(string: "https://blog.kakaocdn.net/dn/dmzcxp/btqX826B16P/zUEIdmEYec7XLXKG1fghk1/img.jpg"),
                                 name: "보리아빠",
                                 specialDomain: [12])
    static var author52 = Author(id: 52, profileImage: nil, name: "자취자취", specialDomain: nil)
    static var author53 = Author(id: 53, profileImage: nil, name: "야옹", specialDomain: nil)
    static var author54 = Author(id: 54, profileImage: nil, name: "abc123", specialDomain: nil)
    static var author55 = Author(id: 55, profileImage: URL(string: "https://www.canceranswer.co.kr/news/photo/202109/3045_4820_1253.jpg"), name: "운동최고", specialDomain: [10])
    static var author56 = Author(id: 56, profileImage: nil, name: "산책좋아", specialDomain: nil)
    static var author57 = Author(id: 57, profileImage: nil, name: "수원집사", specialDomain: nil)
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
    static var boardPost51 = BoardPost(id: 51,
                                       isAnonymous: true,
                                       title: "자취할 때 해먹기 좋은 요리",
                                       content: "안녕하세요 자취 생활 6년차로써 해먹기 좋은 요리에 대해 소개하고자 합니다.\n일단 제일 추천하는 음식은 간장계란밥입니다!\n",
                                       author: AuthorMock.author52,
                                       createdAt: Calendar.current.date(from: DateComponents(year: 2022, month: 3, day: 17, hour: 21, minute: 17))!,
                                       thumnailImageUrl: nil,
                                       usefulCount: 2,
                                       replyCount: 0)
    static var boardPost52 = BoardPost(id: 52,
                                       isAnonymous: false,
                                       title: "강아지 기본 훈련시키는법",
                                       content: "안녕하세요, 현재 말티푸와 함께 지내고 있는 견주입니다.\n기본적으로 애완견을 훈련시킬 때 중요한건 보상과 반복입니다.\n잘하면 먹이를 주고 그것을 기억하도록 꾸준히 반복해야합니다.",
                                       author: AuthorMock.author51,
                                       createdAt: Calendar.current.date(from: DateComponents(year: 2022, month: 3, day: 18, hour: 20, minute: 03))!,
                                       thumnailImageUrl: URL(string: "https://cdn.imweb.me/upload/S201807025b39d1981b0b0/5ca7151769e55.png"),
                                       usefulCount: 4,
                                       replyCount: 2)
    static var boardPost53 = BoardPost(id: 53,
                                       isAnonymous: false,
                                       title: "강아지 첫 산책시키는법",
                                       content: "안녕하세요, 현재 말티푸와 함께 지내고 있는 견주입니다.\n강아지의 첫 산책을 어떻게 해야하는지 걱정하는 분들이 많더라고요.\n우선은 강아지가 겁먹지 않게 자극적이지 않은, 조용한 환경에서부터 산책을 시작하고 점점 새로운 장소로 나아가는 것이 좋답니다.",
                                       author: AuthorMock.author51,
                                       createdAt: Calendar.current.date(from: DateComponents(year: 2022, month: 3, day: 25, hour: 20, minute: 20))!,
                                       thumnailImageUrl: URL(string: "https://static.dogmate.co.kr/blog/wp-content/uploads/2019/04/25165439/image_6552724361539941650988.jpg"),
                                       usefulCount: 6,
                                       replyCount: 3)
    static var boardPost54 = BoardPost(id: 54,
                                       isAnonymous: false,
                                       title: "강아지가 깨물때 대처법",
                                       content: "안녕하세요, 현재 말티푸와 함께 지내고 있는 견주입니다.\n어린 강아지들이 손을 깨물 때 귀엽다고 그냥 넘어가시면 안됩니다.\n제가 추천하는 방법은 손을 얼른 빼고 다른 장난감으로 놀아주는 것입니다.\n손은 장난감이 아니라는 것을 인식시켜주는 것이지요.",
                                       author: AuthorMock.author51,
                                       createdAt: Calendar.current.date(from: DateComponents(year: 2022, month: 4, day: 1, hour: 20, minute: 12))!,
                                       thumnailImageUrl: URL(string: "https://t1.daumcdn.net/cfile/tistory/1154274F4F26BD861E"),
                                       usefulCount: 6,
                                       replyCount: 3)
    static var boardPost55 = BoardPost(id: 55,
                                       isAnonymous: true,
                                       title: "고양이랑 친해지려면 어떻게 해야하나요?",
                                       content: "안녕하세요! 고양이를 분양 받은지 얼마 안된 새내기 집사입니다. 열심히 책하고 인터넷 보면서 잘 돌봐주려고 공부하고 있는데, 경계심이 많은 아이인지 다가가기가 쉽지 않더라고요.. 혹시 친해치는 팁 같은게 있을까요?",
                                       author: AuthorMock.author53,
                                       createdAt: Calendar.current.date(from: DateComponents(year: 2022, month: 4, day: 1, hour: 21, minute: 34))!,
                                       thumnailImageUrl: nil,
                                       usefulCount: 3,
                                       replyCount: 10)
    static var boardPost56 = BoardPost(id: 56,
                                       isAnonymous: true,
                                       title: "집에서 할만한 운동?",
                                       content: "평소에 헬스장 열심히 가다가 코로나에 걸려서 집에서 격리하게 됐는데, 혹시 방안에서 할만한 운동이 있는지 조언을 듣고싶습니다.",
                                       author: AuthorMock.author54,
                                       createdAt: Calendar.current.date(from: DateComponents(year: 2022, month: 4, day: 2, hour: 15, minute: 10))!,
                                       thumnailImageUrl: nil,
                                       usefulCount: 2,
                                       replyCount: 2)
    static var boardPost57 = BoardPost(id: 57,
                                       isAnonymous: false,
                                       title: "집에서 하기 좋은 운동 모음",
                                       content: "요즘 코로나 때문에 헬스장 다니기도 힘드시죠?\n그런분들을 위해 집에서 간단하게 할 수 있는 맨몸 운동들을 알려주려 합니다.\n우선 제일 추천하는 것은 스쿼트입니다.\n참고로 스쿼트는 다리 뿐만 아니라 여러 근육을 강화할 수 있는 전신운동입니다.",
                                       author: AuthorMock.author55,
                                       createdAt: Calendar.current.date(from: DateComponents(year: 2022, month: 4, day: 2, hour: 20, minute: 01))!,
                                       thumnailImageUrl: nil,
                                       usefulCount: 10,
                                       replyCount: 5)
    static var boardPost58 = BoardPost(id: 58,
                                       isAnonymous: true,
                                       title: "운동으로 걷기, 달리기 중 어떤게 좋나요?",
                                       content: "요즘 시간이 남아서 가볍게 운동을 시작해보려 합니다.\n마침 저희 집 앞에 긴 산책로도 있고 해서 걷기나 달리기를 해볼까 하는데 어떤 게 더 건강에 좋을까요?",
                                       author: AuthorMock.author56,
                                       createdAt: Calendar.current.date(from: DateComponents(year: 2022, month: 4, day: 3, hour: 11, minute: 57))!,
                                       thumnailImageUrl: nil,
                                       usefulCount: 2,
                                       replyCount: 5)
    static var boardPost59 = BoardPost(id: 59,
                                       isAnonymous: false,
                                       title: "걷기 vs 달리기",
                                       content: "관련 글을 보게 되어서 정리를 하려 합니다.\n걷기와 달리기는 각각 특징이 있습니다.\n극단적으로 단점만 얘기하자면 걷기는 효율이 낮고 달리기는 몸에 무리가 갑니다.\n따라서 제가 추천하는 것은 빨리걷기 입니다.",
                                       author: AuthorMock.author55,
                                       createdAt: Calendar.current.date(from: DateComponents(year: 2022, month: 4, day: 3, hour: 15, minute: 10))!,
                                       thumnailImageUrl: nil,
                                       usefulCount: 8,
                                       replyCount: 6)
    static var boardPost60 = BoardPost(id: 60,
                                       isAnonymous: false,
                                       title: "고양이가 먹이를 안먹습니다ㅠㅠ",
                                       content: "안녕하세요, 오늘 아침에 저희 고양이에게 먹이를 주는데 먹지를 않더라고요.. 평소에는 주자마자 허겁지겁 먹던 아이인데 이런 적은 처음이라서 당황스럽네요ㅠㅠㅠ 어디가 아픈걸까요? 혹시 이런 경험 있으신 분들 있을까요?",
                                       author: AuthorMock.author57,
                                       createdAt: Calendar.current.date(from: DateComponents(year: 2022, month: 4, day: 5, hour: 11, minute: 50))!,
                                       thumnailImageUrl: nil,
                                       usefulCount: 2,
                                       replyCount: 4)
    static var boardPost151 = BoardPost(id: 151,
                                        isAnonymous: true,
                                        title: "연말정산 꿀팁 줄게",
                                        content: "연말정산 이제 해야 하는데 다들 걱정이 많죠...? 우리 모두 사회인인데 ㄹㅇ 아무 것도 모르잖어 ㅋㅋㅋㅋㅋ 그래서 내가 사용하고 있는 연말정산 앱 좀 알려줄게!! 삼점쌈도 있고 다른 것도 있는데!",
                                        author: AuthorMock.author52,
                                        createdAt: Calendar.current.date(from:DateComponents(year:2021, month:3, day:2, hour:12, minute:30))!,
                                        thumnailImageUrl: nil,
                                        usefulCount: 35,
                                        replyCount: 32)
}
