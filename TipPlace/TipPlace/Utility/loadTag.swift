//
//  loadTag.swift
//  TipPlace
//
//  Created by Junyeong Park on 2022/04/13.
//

import Foundation

func loadTag(userId: Int) -> [String] {
    let user: UserInfo = loadUser(userId: userId)
    return user.interestedTag
}
