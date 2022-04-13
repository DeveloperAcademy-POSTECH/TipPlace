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

        // TODO: 프로필 이미지는 댓글 쪽에서도 사용되는 걸 고려해서 어떻게 모듈화 할 지 생각해보기
        private let baseImageUrl = [
            "https://cdn.pixabay.com/photo/2017/02/08/17/24/fantasy-2049567_960_720.jpg",
            "https://cdn.pixabay.com/photo/2015/12/01/20/28/forest-1072828_960_720.jpg",
            "https://cdn.pixabay.com/photo/2016/08/11/23/48/mountains-1587287_960_720.jpg"
        ]

        private var imageURL: URL? {
            if let url = user.profileImage {
                return url
            }
            return URL(string: baseImageUrl[Int.random(in: 0..<3)])
        }

        init(_ user: Author, date: Date) {
            self.user = user
            self.date = date
        }

        var body: some View {
            GeometryReader { geometry in
                HStack(alignment: .center) {
                    AsyncImage(url: URL(string: baseImageUrl[Int.random(in: 0..<3)])) { image in
                        image.resizable()
                    } placeholder: {
                        ProgressView()
                    }
                    .frame(width: geometry.size.height, height: geometry.size.height)
                    .cornerRadius(geometry.size.height / 2)
                    VStack(alignment: .leading) {
                        Text(user.name)
                            .font(.subheadline)
                            .lineLimit(1)
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
