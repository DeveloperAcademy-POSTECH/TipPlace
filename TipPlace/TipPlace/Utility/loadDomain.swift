//
//  loadDomain.swift
//  TipPlace
//
//  Created by Junyeong Park on 2022/04/16.
//

import Foundation

func loadDomain(userId: Int) -> String {
    let user = loadUser(userId: userId)
    if user.speficalDomain.isEmpty == true {
        return ""
    } else {
        var domains = ""
        for domain in user.speficalDomain {
            domains += domain.korean + " "
        }
        return domains
    }
}
