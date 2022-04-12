//
//  ContentView.swift
//  MC1_UNsIX_HoneyTip
//
//  Created by SeungHwanKim on 2022/04/05.
//

import SwiftUI

struct MainTabView: View {
    @State private var selectedTab = "정보"
    // 제일 처음 앱을 구동했을 떄 정보 화면이 제일 먼저 뜨도록 설정

    var body: some View {
        TabView(selection: $selectedTab) {
            MainBoardView()
                .tabItem {
                    Label("정보", systemImage: "eyeglasses")
                }
                .tag("정보")

            CategoryView()
                .tabItem {
                    Label("카테고리", systemImage: "square.grid.2x2")
                }
                .tag("카테고리")

            MyPageView()
                .tabItem {
                    Label("마이페이지", systemImage: "person")
                }
                .tag("마이페이지")
            TempParentView()
        }
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
