//
//  loadUser.swift
//  TipPlace
//
//  Created by Junyeong Park on 2022/04/13.
//

import Foundation

func loadUser(userId: Int) -> UserInfo {
    let user: [UserInfo]
    user = ListMock.userInfos.filter({$0.id == userId})
    return user[0]
}
