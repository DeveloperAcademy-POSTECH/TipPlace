//
//  loadPosts.swift
//  TipPlace
//
//  Created by Junyeong Park on 2022/04/11.
//

import Foundation

// 우선순위 기준 정렬 함수
// 카테고리를 데이터 차원에서 분리 -> categoryRawValue 제외 가능 (커스텀 가능)
func loadPosts(selectedOption: String, category: Category) -> [BoardPost] {
    var boardPosts: [BoardPost]
    if selectedOption == "최신순" {
        boardPosts = ListMock.boardPosts
            .filter({
                $0.category == category}).sorted(by: {
                    $0.createdAt > $1.createdAt})
    } else {
        boardPosts = ListMock.boardPosts
            .filter({
                $0.category == category}).sorted(by: {
                    $0.usefulCount > $1.usefulCount})
    }
    return boardPosts
}
