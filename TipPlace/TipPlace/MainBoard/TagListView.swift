//
//  TagListView.swift
//  TipPlace
//
//  Created by 리아 on 2022/04/11.
//

import SwiftUI

struct TagListView: View {
    var recommendedTags: [String] = load(fileName: "RecommendedTagData.json")
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(recommendedTags, id: \.self) { tag in
                    Button {
                        print(tag)
                    } label: {
                        Text(tag)
                            .padding(.vertical, 8)
                            .padding(.horizontal, 15)
                            .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color.blue, lineWidth: 2)
                            )
                    }
                }
                .padding(.vertical, 15)
                .padding(.leading, 5)
            }
        }
        .padding(.leading, 15)
    }
}

struct TagListView_Previews: PreviewProvider {
    static var previews: some View {
        TagListView()
    }
}
