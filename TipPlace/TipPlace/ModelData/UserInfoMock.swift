//
//  UserInfoMock.swift
//  TipPlace
//
//  Created by Junyeong Park on 2022/04/16.
//

import Foundation

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
                              markPost: [],
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
                                     markPost: [],
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
                                     writtendPost: [],
                                     interestedTag: ["운동", "삼대", "헬스"],
                                     interestedCategory: [Category.health, Category.livingAlone])
}
