//
//  MainBoardView.swift
//  MC1_Team16_UNsIX_App
//
//  Created by 김수진 on 2022/04/05.
//

import SwiftUI

struct MainBoardView: View{
    var body: some View{
        NavigationView{
            ZStack{
                Color.blue
            }.navigationTitle("정보")
        }
    }
}

struct MainBoardView_Previews: PreviewProvider {
    static var previews: some View {
        MainBoardView()
    }
}
