//
//  MainBoardList.swift
//  TipPlace
//
//  Created by 리아 on 2022/04/11.
//

import SwiftUI

struct MainBoardList: View {
    var boardPostsList = ListMock.boardPosts
    var body: some View {
        ForEach(boardPostsList) { boardPost in
            ZStack {
                MainBoardRow(boardPost: boardPost)
                NavigationLink(destination: Text("DetailPostView")) {
                }
                .opacity(0)
                .buttonStyle(.plain)
            }
            .padding(.vertical, 5)
        }
        .listStyle(.inset)
    }
}

struct MainBoardList_Previews: PreviewProvider {
    static var previews: some View {
        MainBoardList()
    }
}
