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
                    .lineLimit(1)
                VStack(alignment: .leading, spacing: 5) {
                    Text(boardPost.content)
                        .font(.footnote)
                        .lineLimit(3)
                        .padding(.bottom, 7)
                    Text(boardPost.author.name)
                        .font(.caption2)
                        .foregroundColor(.secondary)
                    HStack {
                        Text("유용해요 \(boardPost.usefulCount)")
                        Text("댓글 \(boardPost.replyCount)")
                    }
                    .font(.caption2)
                }
            }
            Spacer()
            if let imageURL = boardPost.thumnailImageUrl {
                AsyncImage(url: imageURL) { image in
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                } placeholder: {
                    ProgressView()
                }
                .frame(width: 110, height: 110, alignment: .center)
                .clipShape(RoundedRectangle(cornerRadius: 10, style: .circular))
                .padding(.leading, 5)
            }
        }
        .padding(5)
    }
}

struct MainBoardRow_Previews: PreviewProvider {
    static var previews: some View {
        MainBoardRow(boardPost: BoardPostMock.boardPost2)
    }
}
