//
//  DetailPostView.swift
//  TipPlace
//
//  Created by 김수진 on 2022/04/08.
//

import SwiftUI

struct TempParentView: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink("to DetailPostView") {
                    DetailPostView(postId: 1)
                }
            }
        }
    }
}

struct DetailPostView: View {
    init(postId: Int) {
        //
        title = tempTitle
        content = tempContent
        contentImages = tempContentImages
        useableCount = tempUseableCount
        replyCount = tempReplyCount
        comments = tempComments
    }

    let title: String
    let content: String
    let contentImages: [ContentImage]
    var useableCount: Int
    var replyCount: Int
    var comments: [CommentModel]

    var body: some View {
        List {
            Section {
                AuthorProfileView(User(name: "user", profileUrl: nil), date: Date())
                Text(title)
                    .bold()
                Text(content)
                ImageCollecionView(imageDatas: contentImages)
                Text("tags")
                HStack {
                    // TODO: 각 버튼의 icon과 title 사이의 간격 조절 필요함
                    Button {
                        // action
                    } label: {
                        Label("유용해요 \(useableCount)", systemImage: "hands.clap")
                            .modifier(BoxButtonLabel())
                    }
                    Button {
                        // action
                    } label: {
                        Label("댓글 \(replyCount)", systemImage: "text.bubble")
                            .modifier(BoxButtonLabel())
                    }
                }
                .listRowBackground(Color.clear)
            }
            .listRowSeparator(.hidden)

            // reply section
            Section(header: Text("댓글")) {
                ForEach(comments) { comment in
                    CommentView(comment: comment)
                        .listRowBackground(Color.clear)
                }
            }
            .listRowSeparator(.visible, edges: .top)
        }
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            HStack {
                Button {
                    // button action
                } label: {
                    Label("", systemImage: "square.and.arrow.up")
                    .labelStyle(.iconOnly)
                }
                Button {
                    // button action
                } label: {
                    Label("", systemImage: "bookmark")
                    .labelStyle(.iconOnly)
                }
            }
        }
        .listStyle(.plain)
        .listRowSeparator(.visible, edges: .top)
    }

    struct BoxButtonLabel: ViewModifier {
        func body(content: Content) -> some View {
            content
                .font(.caption)
                .foregroundColor(.gray)
                .padding(5)
                .overlay(RoundedRectangle(cornerRadius: 5)
                    .stroke(.gray, lineWidth: 1))
        }
    }

    // Temp User Model
    struct User {
        let name: String
        let profileUrl: String?
    }

    // Temp Comment Model
    struct CommentModel: Identifiable {
        let id: Int
        let author: User
        let content: String
        let isReply: Bool
        let createdAt: Date
        let usefulCount: Int
    }

    // Temp Mock Datas
    let tempTitle = "Title"
    let tempContent = """
                post content
                post content
                post content
                post content
                """
    let tempContentImages = [ContentImage(imageUrl: ""),
                             ContentImage(imageUrl: ""),
                             ContentImage(imageUrl: ""),
                             ContentImage(imageUrl: ""),
                             ContentImage(imageUrl: ""),
                             ContentImage(imageUrl: ""),
                             ContentImage(imageUrl: ""),
                             ContentImage(imageUrl: "")
                            ]
    let tempUseableCount: Int = 25
    let tempReplyCount: Int = 5
    let tempComments: [CommentModel] = [CommentModel(id: 1,
                                                     author: User(name: "user1", profileUrl: nil),
                                                     content: "댓글",
                                                     isReply: false,
                                                     createdAt: Date(),
                                                     usefulCount: 23),
                                        CommentModel(id: 2,
                                                     author: User(name: "user2", profileUrl: nil),
                                                     content: "대댓글",
                                                     isReply: true,
                                                     createdAt: Date(),
                                                     usefulCount: 11),
                                        CommentModel(id: 3,
                                                     author: User(name: "user3", profileUrl: nil),
                                                     content: "댓글",
                                                     isReply: false,
                                                     createdAt: Date(),
                                                     usefulCount: 2)]
}

struct DetailPostView_Previews: PreviewProvider {
    static var previews: some View {
        TempParentView()
        DetailPostView(postId: 1)
    }
}
