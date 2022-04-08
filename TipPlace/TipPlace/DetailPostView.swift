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
            // info section
            Section {
                Text(title)
                    .font(.largeTitle)
                AuthorProfileView(User(name: "user", profileUrl: nil), date: Date())
            }
            .listRowSeparator(.hidden)
            .listSectionSeparator(.visible, edges: .bottom)

            // content section
            Section {
                Text(content)
                Text("tags")
                Text("유용해요 10  댓글 30  // useful + reply info")
                    .font(.caption)
                    .foregroundColor(.secondary)
            }
            .listRowSeparator(.hidden)
            .listSectionSeparator(.visible, edges: .bottom)

            // event buttons section
            Section {
                Text("event section")
            }
            .listRowSeparator(.hidden)
            .listSectionSeparator(.visible, edges: .bottom)

            // reply section
            Section {
                Text("reply list")
            }
            .listRowSeparator(.hidden)
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
