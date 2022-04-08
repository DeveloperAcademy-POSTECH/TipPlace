//
//  BoardRow.swift
//  TipPlace
//
//  Created by Junyeong Park on 2022/04/08.
//

import SwiftUI

// 프로필 URL -> 디폴트로 person 이미지 사용, 함수로 처리해야 함
// 게시물 미리보기 -> 50자 이상일 때 자동으로 50자만 되도록 처리해야 함
// 기타 Row 처리 -> 디자인 맞춰서 다듬기

struct BoardRow: View {
    var boardPost: BoardPost
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(boardPost.title)
                    .font(.title)
                Text(boardPost.content)
                    .font(.body)
                Text(boardPost.author.name)
                    .font(.callout)
                HStack {
                    Text("유용해요 \(boardPost.usefulCount)")
                    Text("좋아요 \(boardPost.replyCount)")
                }
                .font(.footnote)
            }
            .padding()
            Image(systemName: "person")
                .resizable()
                .frame(width: 50, height: 50, alignment: .center)
        }
    }
}

struct BoardRow_Previews: PreviewProvider {
    static var previews: some View {
        BoardRow(boardPost: boardPosts[0])
    }
}
