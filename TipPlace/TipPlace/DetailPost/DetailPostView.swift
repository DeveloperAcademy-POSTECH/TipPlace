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
    let detailPost: DetailPostModel
    // TODO: images를 뽑아 내는 게 여기서 할 일이 적합한지, CollectionView에서 처리하는 게 적합한지 생각해보기
    var images: [ContentImage] {
        get {
            var imageArray: [ContentImage] = []
            for imageUrl in detailPost.images {
                imageArray.append(ContentImage(imageUrl: imageUrl))
            }
            return imageArray
        }
    }

    init(postId: Int) {
        let detailPostData = BoardPostMock.boardPost51
        detailPost = DetailPostModel(id: detailPostData.id,
                                     category: Category.economy,
                                     isAnonymous: detailPostData.isAnonymous,
                                     title: detailPostData.title,
                                     content: detailPostData.content,
                                     author: detailPostData.author,
                                     createdAt: detailPostData.createdAt,
                                     images: [],
                                     tags: ["aaa", "bbb"],
                                     usefulCount: detailPostData.usefulCount,
                                     comment: [])
    }

    var body: some View {
        List {
            Section {
                // MARK: author
                AuthorProfileView(detailPost.author, date: Date())

                // MARK: title
                Text(detailPost.title)
                    .bold()

                // MARK: content
                Text(detailPost.content)

                // MARK: images
                ImageCollecionView(imageDatas: images)

                // MARK: tags
                if !detailPost.tags.isEmpty {
                    TagListView(tags: detailPost.tags)
                }

                // MARK: buttons
                HStack {
                    // TODO: 각 버튼의 icon과 title 사이의 간격 조절 필요함
                    Button {
                        // action
                    } label: {
                        Label("유용해요 \(detailPost.usefulCount)", systemImage: "hands.clap")
                            .modifier(BoxButtonLabel())
                    }
                    Button {
                        // action
                    } label: {
                        Label("댓글 \(detailPost.comment.count)", systemImage: "text.bubble")
                            .modifier(BoxButtonLabel())
                    }
                }
                .listRowBackground(Color.clear)
            }
            .listRowSeparator(.hidden)

            // MARK: reply section
            Section(header: Text("댓글")) {
                ForEach(detailPost.comment) { comment in
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
}

struct DetailPostView_Previews: PreviewProvider {
    static var previews: some View {
        TempParentView()
        DetailPostView(postId: 1)
    }
}
