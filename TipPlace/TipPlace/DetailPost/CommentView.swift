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
                    Image(systemName: "person.crop.circle")
                        .resizable()
                        .frame(width: 23, height: 23)
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
