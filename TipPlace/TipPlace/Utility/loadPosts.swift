//
//  loadPosts.swift
//  TipPlace
//
//  Created by Junyeong Park on 2022/04/11.
//

import Foundation

// 우선순위 기준 정렬 함수
// 카테고리를 데이터 차원에서 분리 -> categoryRawValue 제외 가능 (커스텀 가능)
func loadPosts(selectedOption:String, categorayRawValue: Category.RawValue) -> [BoardPost]{
    var boardPosts: [BoardPost]
    if selectedOption == "최신순" {
        boardPosts = BoardPostListMock.boardPosts.sorted(by: {$0.createdAt > $1.createdAt})
    } else if selectedOption == "인기순" {
        boardPosts = BoardPostListMock.boardPosts.sorted(by: {$0.replyCount > $1.replyCount})
    } else {
        boardPosts = BoardPostListMock.boardPosts.sorted(by: {$0.usefulCount > $1.usefulCount})
    return boardPosts
}
