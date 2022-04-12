//
//  RecommendListView.swift
//  TipPlace
//
//  Created by 리아 on 2022/04/11.
//  Managed by Noah

import SwiftUI

struct RecommendList: View {
    var categoryEnum: Category
    var body: some View {
        let recommended = loadRecommends(category: categoryEnum)
        ScrollView(.horizontal) {
            HStack {
                ForEach(recommended) {rec in
                    NavigationLink {
                        Text("프로필로 보낸다")
                    } label: {
                        ExpertSelectButtonView(title: rec.name, imageUrl: rec.name)
                    }
                }
            }
        }
    }
}

struct RecommendList_Previews: PreviewProvider {
    static var previews: some View {
        RecommendList(categoryEnum:Category.livingAlone)
    }
}
