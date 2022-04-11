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
                Text("reply list")
            }
            .listRowSeparator(.visible, edges: .top)
        }
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            HStack {
                Button("button1") {
                    // action
                }
                Button("button2") {
                    // action
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
}

struct DetailPostView_Previews: PreviewProvider {
    static var previews: some View {
        TempParentView()
        DetailPostView()
    }
}
