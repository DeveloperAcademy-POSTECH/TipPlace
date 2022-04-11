//
//  CommentView.swift
//  TipPlace
//
//  Created by 김수진 on 2022/04/11.
//

import SwiftUI

extension DetailPostView {
    struct CommentView: View {
        let comment: CommentModel

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
                // TODO: 이미지 크기도 사용자 이름 Label의 폰트처럼 다이나믹한 사이즈가 적용되도록 개선이 필요할 듯함.
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
                        Label("\(comment.usefulCount)", systemImage: "hands.clap")
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
        DetailPostView.CommentView(comment: DetailPostView.CommentModel(
                                    id: 1,
                                    author: DetailPostView.User(name: "I'mUser", profileUrl: ""),
                                    content: """
                                            임시 댓글입니다.
                                            임시 댓글입니다.
                                            임시 댓글입니다.
                                            임시 댓글입니다.
                                            임시 댓글입니다.
                                            임시 댓글입니다.
                                            """,
                                    isReply: true,
                                    createdAt: Date(),
                                    usefulCount: 25))
        .frame(maxHeight: 100)
    }
}
