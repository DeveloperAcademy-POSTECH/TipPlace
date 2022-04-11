//
//  RecommendListView.swift
//  TipPlace
//
//  Created by 리아 on 2022/04/11.
//  Managed by Noah

import SwiftUI

struct RecommendList: View {
    var body: some View {
        ScrollView(.horizontal) {
            HStack {
                ForEach(RecommendedMock.recommended) {rec in
                    NavigationLink {
                        Text("프로필로 보낸다")
                        //                   Simon의 MyPageView? 고유 아이디로 찾아야 함
                    } label: {
                        RecommendedItem(recommended: rec)
                    }
                }
            }
            Divider()
        }
    }
}

struct RecommendList_Previews: PreviewProvider {
    static var previews: some View {
        RecommendList()
    }
}
