//
//  MyPageView.swift
//  MC1_Team16_UNsIX_App
//
//  Created by 김수진 on 2022/04/05.
//

import SwiftUI

struct MyPageView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color.green
            }.navigationTitle("마이페이지")
        }
    }
}

struct MyPageView_Previews: PreviewProvider {
    static var previews: some View {
        MyPageView()
    }
}
