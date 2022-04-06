//
//  CategoryView.swift
//  MC1_Team16_UNsIX_App
//
//  Created by 김수진 on 2022/04/05.
//

import SwiftUI

struct CategoryView: View{
    var body: some View{
        NavigationView{
            ZStack{
                Color.red
            }
            //위 네비게이션뷰의 {} 안에 각자 구현하신거 넣으면 될 것 같습니다. 지금은 임의로 ZStack 넣었습니다.
            .navigationTitle("카테고리")
        }
    }
}

struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryView()
    }
}
