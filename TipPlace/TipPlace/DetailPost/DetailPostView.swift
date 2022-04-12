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
        .navigationTitle(Text("자취"))
    }
}

struct DetailPostView: View {
    @State var didBookMarked = false
    @State var isUsefulButtonSelected = false
    @State var isCommentButtonClicked = false

    var bookmarkImageString: String {
        didBookMarked ? "bookmark.fill" : "bookmark"
    }

    let detailPost: DetailPostModel

    var commentCount: Int {
        if let comment = detailPost.comment {
            return comment.count
        } else { return 0 }
    }

    // TODO: images를 뽑아 내는 게 여기서 할 일이 적합한지, CollectionView에서 처리하는 게 적합한지 생각해보기
    var images: [ContentImage] {
        var imageArray: [ContentImage] = []
        for imageUrl in detailPost.images {
            if let imageUrl = imageUrl {
                imageArray.append(ContentImage(imageUrl: imageUrl))
            }
        }
        return imageArray
    }

    init(postId: Int) {
        var detailPost: DetailPostModel?

        for detailPostData in ListMock.detailPosts where detailPostData.id == postId {
                detailPost = detailPostData
        }

        guard let detailPost = detailPost else {
            self.detailPost = DetailPostModel(id: 0,
                                              category: .etc,
                                              isAnonymous: true,
                                              title: "",
                                              content: "",
                                              author: Author(id: 0,
                                                             profileImage: nil,
                                                             name: "",
                                                             specialDomain: nil),
                                              createdAt: Date(),
                                              images: [],
                                              tags: nil,
                                              usefulCount: 0,
                                              comment: nil,
                                              idWithUseful: nil,
                                              idWithReply: nil,
                                              idWithMark: nil)
            return
        }
        self.detailPost = detailPost
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
                if let tags = detailPost.tags, !tags.isEmpty {
                    TagListView(tags: tags)
                }

                // MARK: buttons
                HStack {
                    // MARK: 유용해요 버튼
                    Button(action: {
                        isUsefulButtonSelected.toggle()
                    }, label: {
                        HStack {
                            Image(systemName: "hands.clap")
                                .padding(EdgeInsets(top: -3, leading: 0, bottom: -3, trailing: -5))
                            Text("유용해요 \(detailPost.usefulCount)")
                        }
                    })
                    .buttonStyle(BoxButtonStyle(isButtonSelected: $isUsefulButtonSelected))

                    // MARK: 댓글 버튼
                    Button(action: {
                        //
                    }, label: {
                        HStack {
                            Image(systemName: "text.bubble")
                                .padding(EdgeInsets(top: -3, leading: 0, bottom: -3, trailing: -5))
                            Text("댓글 \(commentCount)")
                        }
                    })
                    .buttonStyle(BoxButtonStyle(isButtonSelected: $isCommentButtonClicked))
                }
                .listRowBackground(Color.clear)
            }
            .listRowSeparator(.hidden)

            // MARK: reply section
            Section(header: Text("댓글")) {
                if let comment = detailPost.comment {
                    ForEach(comment) { comment in
                        CommentView(comment: comment)
                            .listRowBackground(Color.clear)
                    }
                }
            }
            .listRowSeparator(.visible, edges: .top)
        }
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            // MARK: NavigationBar - ToolBar Buttons
            HStack {
                Button {
                    // button action
                } label: {
                    Label("", systemImage: "square.and.arrow.up")
                    .labelStyle(.iconOnly)
                }
                Button(action: {
                    didBookMarked.toggle()
                }, label: {
                    Label("", systemImage: bookmarkImageString)
                        .labelStyle(.iconOnly)
                })
            }
        }
        .listStyle(.plain)
        .listRowSeparator(.visible, edges: .top)
    }
}

struct DetailPostView_Previews: PreviewProvider {
    static var previews: some View {
        TempParentView()
        DetailPostView(postId: 1)
    }
}
