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
                Text("user info")
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
}

struct DetailPostView_Previews: PreviewProvider {
    static var previews: some View {
        TempParentView()
        DetailPostView()
    }
}
