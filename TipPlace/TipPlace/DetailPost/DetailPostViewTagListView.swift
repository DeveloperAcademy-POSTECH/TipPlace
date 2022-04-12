//
//  TagListView.swift
//  TipPlace
//
//  Created by 김수진 on 2022/04/12.
//

import SwiftUI

extension DetailPostView {
    struct TagListView: View {
        @State private var tags: [String]

        init(tags: [String]) {
            self.tags = tags
        }

        var body: some View {
            ScrollView(.horizontal) {
                HStack {
                    // 추가된 태그 보기
                    ForEach(tags, id: \.self) { tag in
                        Text("# \(tag)")
                               .padding(5)
                               .font(.body)
                               .background(Color.gray)
                               .foregroundColor(Color.white)
                               .cornerRadius(5)
                               .padding(3)
                               .padding(.bottom, 8)
                    }
                }
            }
        }
    }
}

struct DetailPostViewTagListView_Previews: PreviewProvider {
    static var previews: some View {
        DetailPostView(postId: 1)
    }
}
