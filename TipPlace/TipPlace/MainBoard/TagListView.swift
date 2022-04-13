//
//  TagListView.swift
//  TipPlace
//
//  Created by 리아 on 2022/04/11.
//

import SwiftUI

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
                    }
                    .buttonStyle(MainTagButtonStyle())
                }
                .padding(.bottom, 10)
                .padding(.top, 5)
                .padding(.horizontal, 2.5)
            }
        }
    }
}

struct TagListView_Previews: PreviewProvider {
    static var previews: some View {
        TagListView(selectedTag: .constant("tag"))
    }
}
