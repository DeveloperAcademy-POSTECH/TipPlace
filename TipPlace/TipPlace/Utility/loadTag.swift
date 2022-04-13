//
//  loadTag.swift
//  TipPlace
//
//  Created by Junyeong Park on 2022/04/13.
//

import Foundation

func loadTag(userId: Int) -> [String] {
    let user: [UserInfo]
    user = ListMock.userInfos.filter({$0.id == userId})
    if let tags: [String] = user[0].interestedTag {
        return tags
    } else
    {
        return ["tmp tag"]
        
    }
}
