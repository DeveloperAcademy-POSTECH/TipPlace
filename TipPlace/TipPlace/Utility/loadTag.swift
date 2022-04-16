//
//  loadTag.swift
//  TipPlace
//
//  Created by Junyeong Park on 2022/04/13.
//

import Foundation

func loadTag(userId: Int) -> [String] {
    let user: UserInfo = loadUser(userId: userId)
    if user.interestedTag.isEmpty == true {return [""]
    } else {
        return user.interestedTag}
}
