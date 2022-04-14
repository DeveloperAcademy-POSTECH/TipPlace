//
//  loadTag.swift
//  TipPlace
//
//  Created by Junyeong Park on 2022/04/13.
//

import Foundation

func loadTag(userId: Int) -> [String] {
    let user: UserInfo = loadUser(userId: userId)
    if let tags: [String] = user.interestedTag {
        return tags
    } else {
        return [""]
//        빈 문자열로 변경
    }
}
