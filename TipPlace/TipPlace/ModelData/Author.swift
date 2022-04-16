//
//  Author.swift
//  TipPlace
//
//  Created by 리아 on 2022/04/10.
//

import Foundation

struct Author: Codable, Identifiable {
    var id: Int
    var profileImage: URL?
    var name: String
    var speficalDomain: [Category]

    init(id: Int, profileImage: URL?, name: String, specialDomain: [Category]) {
        self.id = id
        self.profileImage = profileImage
        self.name = name
        self.speficalDomain = specialDomain
    }
}
