//
//  BoardListView.swift
//  TipPlace
//
//  Created by 리아 on 2022/04/11.
//  Managed by Noah

import SwiftUI

struct BoardList: View {
    var boardPostsList = BoardPostListMock.boardPosts
    var body: some View {
        List(boardPostsList) {boardPost in
            NavigationLink {
                Text("link Snoopy's View")
                //                    스누피 게시물 뷰에 게시물 고유 번호 파라미터로 링크
            } label: {
                BoardRow(boardPost: boardPost)
            }
        }
    }
}

struct BoardList_Previews: PreviewProvider {
    static var previews: some View {
        BoardList()
    }
}
