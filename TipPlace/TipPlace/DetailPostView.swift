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

    var body: some View {
        List {
            Section {
                AuthorProfileView(User(name: "user", profileUrl: nil), date: Date())
                Text(title)
                    .bold()
                Text(content)
                Text("images")
                Text("tags")
                Text("유용해요, 댓글 box")
            }
            .listRowSeparator(.hidden)
            .listSectionSeparator(.visible, edges: .bottom)

            // reply section
            Section(header: Text("댓글")) {
                Text("reply list")
            }
            .listRowSeparator(.visible, edges: .top)
        }
        .navigationBarTitleDisplayMode(.inline)
        .listStyle(.plain)
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
            HStack(alignment: .center) {
                Image(systemName: "person.crop.circle")
                VStack(alignment: .leading) {
                    Text(user.name)
                        .font(.subheadline)
                    Text(date.description)
                        .font(.caption2)
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
