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
    @State var isTagSelected = false
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(recommendedTags, id: \.self) { tag in
                    Button {
                        selectedTag = tag
                        isTagSelected.toggle()
                    } label: {
                        Text(tag)
                    }
                    .buttonStyle(MainTagButtonStyle(isButtonSelected: $isTagSelected))
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
