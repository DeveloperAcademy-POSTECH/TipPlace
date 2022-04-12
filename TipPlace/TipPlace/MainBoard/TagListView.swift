//
//  TagListView.swift
//  TipPlace
//
//  Created by 리아 on 2022/04/11.
//

import SwiftUI

extension MainBoardView {
struct TagListView: View {
    var recommendedTags: [String] = load(fileName: "RecommendedTagData.json")
    @Binding var selectedTag: String
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(recommendedTags, id: \.self) { tag in
                    Button {
                        selectedTag = tag
                    } label: {
                        Text(tag)
                            .font(.callout)
                            .padding(.vertical, 6)
                            .padding(.horizontal, 15)
                            .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color.blue, lineWidth: 2)
                            )
                    }
                }
                .padding(.bottom, 10)
                .padding(.top, 5)
                .padding(.horizontal, 2.5)
            }
        }
    }
}
}

struct TagListView_Previews: PreviewProvider {
    static var previews: some View {
        MainBoardView.TagListView(selectedTag: .constant("tag"))
    }
}
