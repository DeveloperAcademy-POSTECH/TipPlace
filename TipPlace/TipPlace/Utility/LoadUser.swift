//
//  LoadUser.swift
//  TipPlace
//
//  Created by SeungHwanKim on 2022/04/14.
//

import Foundation

func loadUser(userId: Int) -> UserInfo {
    let user: [UserInfo]
    user = ListMock.userInfos.filter({$0.id == userId})
    return user[0]
}
