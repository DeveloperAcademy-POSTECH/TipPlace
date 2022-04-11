//
//  MainBoardRow.swift
//  TipPlace
//
//  Created by 리아 on 2022/04/11.
//

import SwiftUI

struct MainBoardRow: View {
    var boardPost: BoardPost
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 10) {
                Text(boardPost.title)
                    .font(.callout)
                    .fontWeight(.bold)
                    .lineLimit(2)
                VStack(alignment: .leading, spacing: 5) {
                    Text(boardPost.content)
                        .font(.footnote)
                        .lineLimit(3)
                        .padding(.bottom, 7)
                    Text(boardPost.author.name)
                        .font(.caption2)
                        .fontWeight(.thin)
                    HStack {
                        Text("유용해요 \(boardPost.usefulCount)")
                        Text("좋아요 \(boardPost.replyCount)")
                    }
                    .font(.caption2)
                }
            }
            Spacer()
            Image("요정의 샘")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 100, height: 100, alignment: .center)
                .clipped()
        }
    }
}

struct MainBoardRow_Previews: PreviewProvider {
    static var previews: some View {
        MainBoardRow(boardPost: BoardPostMock.boardPost1)
    }
}
