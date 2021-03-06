//
//  UserInfo.swift
//  TipPlace
//
//  Created by 김동락 on 2022/04/12.
//

import SwiftUI

struct UserInfo: Codable, Identifiable {
    var id: Int
    var profileImage: URL?
    var name: String
    var speficalDomain: [Category]
    var usefulPost: [Int]
    var replyPost: [Int]
    var markPost: [Int]
    var writtendPost: [Int]
    var interestedTag: [String]
    var interestedCategory: [Category]

    init(id: Int, profileImage: URL?, name: String, specialDomain: [Category],
         usefulPost: [Int], replyPost: [Int], markPost: [Int], writtendPost: [Int],
         interestedTag: [String], interestedCategory: [Category]) {
        self.id = id
        self.profileImage = profileImage
        self.name = name
        self.speficalDomain = specialDomain
        self.usefulPost = usefulPost
        self.replyPost = replyPost
        self.markPost = markPost
        self.writtendPost = writtendPost
        self.interestedTag = interestedTag
        self.interestedCategory = interestedCategory
    }
}
