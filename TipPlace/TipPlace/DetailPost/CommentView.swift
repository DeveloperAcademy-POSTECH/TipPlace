//
//  CommentView.swift
//  TipPlace
//
//  Created by 김수진 on 2022/04/11.
//

import SwiftUI

extension DetailPostView {
    struct CommentView: View {
        private let comment: CommentModel

        private let baseImageUrl = [
            "https://cdn.pixabay.com/photo/2017/02/08/17/24/fantasy-2049567_960_720.jpg",
            "https://cdn.pixabay.com/photo/2015/12/01/20/28/forest-1072828_960_720.jpg",
            "https://cdn.pixabay.com/photo/2016/08/11/23/48/mountains-1587287_960_720.jpg"
        ]

        private var imageURL: URL? {
            if let url = comment.author.profileImage {
                return url
            }
            return URL(string: baseImageUrl[Int.random(in: 0..<3)])
        }

        init(comment: CommentModel) {
            self.comment = comment
        }

        var body: some View {
            if !comment.isReply {
                contentView
            } else {
                HStack(alignment: .top) {
                    Image(systemName: "arrow.turn.down.right")
                        .padding()
                    contentView
                }
            }
        }
        var contentView: some View {
            VStack(alignment: .leading, spacing: 5) {
                HStack {
                    AsyncImage(url: URL(string: baseImageUrl[Int.random(in: 0..<3)])) { image in
                        image.resizable()
                    } placeholder: {
                        ProgressView()
                    }
                    .frame(width: 23, height: 23)
                    .cornerRadius(23 / 2)
                    .padding(2)
                    Label(comment.author.name, systemImage: "")
                        .labelStyle(.titleOnly)
                        .font(.caption)
                }
                Text(comment.content)
                    .font(.caption)
                HStack(spacing: 15) {
                    Text(comment.createdAt.description)
                        .font(.caption2)
                        .foregroundColor(.gray)
                    if !comment.isReply {
                        Button {
                            // 답글 버튼 액션
                        } label: {
                            Label("답글", systemImage: "")
                                .labelStyle(.titleOnly)
                                .font(.bold(.caption)())
                                .foregroundColor(.gray)
                        }
                    }
                    Button {
                        // 유용해요 버튼 액션
                    } label: {
                        HStack {
                            Image(systemName: "hands.clap")
                                .padding(EdgeInsets(top: -3, leading: 0, bottom: -3, trailing: -5))
                            Text("\(comment.usefulCount)")
                        }
                        .font(.bold(.caption)())
                        .foregroundColor(.gray)
                    }
                }
            }
        }
    }
}

struct CommentView_Previews: PreviewProvider {
    static var previews: some View {
        DetailPostView(postId: 1)
    }
}
