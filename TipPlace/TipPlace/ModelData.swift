//
//  ModelData.swift
//  TipPlace
//
//  Created by Junyeong Park on 2022/04/08.
//

import Foundation

//var boardPostsList: BoardPostList = load("BoardPostListData.json")
//var boardPosts: [BoardPost] = boardPostsList.posts
//
//func load<T: Decodable>(_ filename: String) -> T {
//    let data: Data
//
//    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
//        else {
//            fatalError("Couldn't find \(filename) in main bundle.")
//    }
//
//    do {
//        data = try Data(contentsOf: file)
//    } catch {
//        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
//    }
//
//    do {
//        let decoder = JSONDecoder()
//        return try decoder.decode(T.self, from: data)
//    } catch {
//        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
//    }
//}
// codable을 이용해서 json 데이터 파싱하려고 했으나 fatalError가 아니라 queuedFatalError라는 SwiftLint extension 함수 사용하라는 에러 메시지 때문에 빌드 실패: (1). queuedFatalError 사용할 것? (2). 다른 방식으로 파싱? -> 파싱할 방법도 알려주길 바람

var boardPost1: BoardPost = BoardPost(id: 1, isAnonymous: false, title: "자취꿀팁11", content: "자취는 이렇게 하는 겁니다", author: author1, createdAt: Date.now, thumnailImageUrl: nil, usefulCount: 5, replyCount: 6)
var author1: BoardPost.Author = BoardPost.Author(id: 2, profileImage: nil, name: "작성자1", specialDomain: [1])
var boardPosts: [BoardPost] = [boardPost1]
var rec1: Recommended = Recommended(id: 1, profileImage: nil, name: "자취왕", specialDomain: [1])
var rec2: Recommended = Recommended(id: 2, profileImage: nil, name: "자취왕2", specialDomain: [1, 2])

var recommended: [Recommended] = [rec1, rec2]


struct BoardPostList: Codable {
    var posts: [BoardPost]
}

struct BoardPost: Codable, Identifiable {
    var id: Int
    var isAnonymous: Bool
    var title: String
    var content: String
    var author: Author
    var createdAt: Date
    var thumnailImageUrl: URL?
    var usefulCount: Int
    var replyCount: Int
    
    init(id: Int, isAnonymous: Bool, title: String, content: String, author: Author, createdAt: Date, thumnailImageUrl: URL?, usefulCount: Int, replyCount: Int){
        self.id = id
        self.isAnonymous = isAnonymous
        self.title = title
        self.content = content
        self.author = author
        self.createdAt = createdAt
        self.thumnailImageUrl = thumnailImageUrl
        self.usefulCount = usefulCount
        self.replyCount = replyCount
    }
    
    struct Author: Codable {
        var id: Int
        var profileImage: URL?
        var name: String
        var specialDomain: [Int]?
        
        init(id: Int, profileImage: URL?, name: String, specialDomain: [Int]?) {
            self.id = id
            self.profileImage = profileImage
            self.name = name
            self.specialDomain = specialDomain
        }
    }
}

struct Recommended: Codable, Identifiable{
    var id: Int
    var profileImage: URL?
    var name: String
    var speficalDomain: [Int]?
    
    init(id: Int, profileImage: URL?, name: String, specialDomain: [Int]?){
        self.id = id
        self.profileImage = profileImage
        self.name = name
        self.speficalDomain = specialDomain
    }
}
