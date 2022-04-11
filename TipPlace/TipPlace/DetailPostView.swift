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
                    DetailPostView()
                }
            }
        }
    }
}

struct DetailPostView: View {
    let title = "Title"
    let content = """
                post content
                post content
                post content
                post content
                """
    let contentImages = [ContentImage(imageUrl: ""),
                         ContentImage(imageUrl: ""),
                         ContentImage(imageUrl: ""),
                         ContentImage(imageUrl: ""),
                         ContentImage(imageUrl: ""),
                         ContentImage(imageUrl: ""),
                         ContentImage(imageUrl: ""),
                         ContentImage(imageUrl: "")
                        ]
    var useableCount: Int = 25
    var replyCount: Int = 5
    var comments: [CommentModel] = [CommentModel(id: 1,
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
                                                 usefulCount: 2),]

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
                            .font(.caption)
                            .foregroundColor(.gray)
                            .padding(5)
                            .overlay(RoundedRectangle(cornerRadius: 5)
                                .stroke(.gray, lineWidth: 1))
                    }
                    Button {
                        // action
                    } label: {
                        Label("댓글 \(replyCount)", systemImage: "text.bubble")
                            .font(.caption)
                            .foregroundColor(.gray)
                            .padding(5)
                            .overlay(RoundedRectangle(cornerRadius: 5)
                                .stroke(.gray, lineWidth: 1))
                    }
                }
            }
            .listRowSeparator(.hidden)

            // reply section
            Section(header: Text("댓글")) {
//                Text("reply list")
                ForEach(comments) { comment in
                    CommentView(comment: comment)
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
                    Label {
                        Text("")
                    } icon: {
                        Image(systemName: "square.and.arrow.up")
                    }
                    .labelStyle(.iconOnly)
                }
                Button {
                    // button action
                } label: {
                    Label {
                        Text("")
                    } icon: {
                        Image(systemName: "bookmark")
                    }
                    .labelStyle(.iconOnly)
                }
            }
        }
        .listStyle(.plain)
        .listRowSeparator(.visible, edges: .top)
    }

    struct User {
        let name: String
        let profileUrl: String?
    }

    struct AuthorProfileView: View {
        let user: User
        let date: Date

        init(_ user: User, date: Date) {
            self.user = user
            self.date = date
        }

        var body: some View {
            GeometryReader { geometry in
                HStack(alignment: .center) {
                    Image(systemName: "person.crop.circle")
                        .resizable()
                        .frame(width: geometry.size.height, height: geometry.size.height)
                    VStack(alignment: .leading) {
                        // TODO: username이 한 줄만 나오도록 해야함.
                        Text("user.name")
                            .font(.subheadline)
                        Text(date.description)
                            .font(.caption2)
                    }
                }
            }
        }
    }

    struct ContentImage: Identifiable {
        init(imageUrl: String) {
            id = imageUrl
            image = Image(systemName: "checkmark.circle")
        }
        let id: String
        var image: Image?
    }

    struct ImageCell: View {
        let imageData: ContentImage
        var body: some View {
            guard let image = imageData.image else {
                return Image("")
                    .resizable()
                    .frame(width: 95, height: 95, alignment: .center)
            }
            return image
                .resizable()
                .frame(width: 95, height: 95, alignment: .center)
        }
    }

    //TODO: cell의 재사용 필요
    struct ImageCollecionView: View {
        @State var imageDatas = [ContentImage]()

        var body: some View {
            ScrollView(.horizontal) {
                HStack {
                    ForEach(imageDatas) {
                        ImageCell(imageData: $0)
                            .background(.yellow)
                            .cornerRadius(8)
                            .padding(2)
                    }
                }
            }
        }
    }

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
            VStack(alignment: .leading) {
                GeometryReader { geometry in
                    HStack {
                        Image(systemName: "person.crop.circle")
                            .resizable()
                            .frame(width: geometry.size.height, height: geometry.size.height)
                        Label(comment.author.name, systemImage: "")
                            .labelStyle(.titleOnly)
                    }
                }
                Text(comment.content)
                HStack(spacing: 20) {
                    Text(comment.createdAt.description)
                        .font(.caption2)
                    if !comment.isReply {
                        Button {
                            // 답글 버튼 액션
                        } label: {
                            Label("답글", systemImage: "")
                                .labelStyle(.titleOnly)
                                .font(.caption2)
                        }
                    }
                    Button {
                        // 유용해요 버튼 액션
                    } label: {
                        Label("\(comment.usefulCount)", systemImage: "hands.clap")
                            .font(.caption2)
                    }
                }
            }
        }
    }

    struct CommentModel: Identifiable {
        let id: Int
        let author: User
        let content: String
        let isReply: Bool
        let createdAt: Date
        let usefulCount: Int
    }
}

struct DetailPostView_Previews: PreviewProvider {
    static var previews: some View {
        TempParentView()
        DetailPostView()
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
