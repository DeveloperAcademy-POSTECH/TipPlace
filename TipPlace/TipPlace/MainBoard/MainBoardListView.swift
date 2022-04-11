//
//  MainBoardList.swift
//  TipPlace
//
//  Created by 리아 on 2022/04/11.
//

import SwiftUI

struct MainBoardList: View {
    var boardPostsList = BoardPostListMock.boardPosts
    var body: some View {
        List(boardPostsList) { boardPost in
            NavigationLink(destination: Text("DetailPostView")) {
                MainBoardRow(boardPost: boardPost)
                    .padding(.vertical, 5)
            }
        }
        .listStyle(.inset)
    }
}

struct MainBoardList_Previews: PreviewProvider {
    static var previews: some View {
        MainBoardList()
    }
}
