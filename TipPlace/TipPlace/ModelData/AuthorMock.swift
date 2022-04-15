//
//  AuthorMock.swift
//  TipPlace
//
//  Created by Junyeong Park on 2022/04/16.
//

import Foundation

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
