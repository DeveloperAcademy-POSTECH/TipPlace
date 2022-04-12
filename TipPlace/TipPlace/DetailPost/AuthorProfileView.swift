//
//  AuthorProfileView.swift
//  TipPlace
//
//  Created by 김수진 on 2022/04/11.
//

import SwiftUI

extension DetailPostView {
    struct AuthorProfileView: View {
        private let user: Author
        private let date: Date

        init(_ user: Author, date: Date) {
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
                        Text(user.name)
                            .font(.subheadline)
                        Text(date.description)
                            .font(.caption2)
                    }
                }
            }
        }
    }
}

struct AuthorProfile_Previews: PreviewProvider {
    static var previews: some View {
        DetailPostView(postId: 1)
    }
}
