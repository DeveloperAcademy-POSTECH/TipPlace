//
//  CategoryBoardView.swift
//  TipPlace
//
//  Created by Junyeong Park on 2022/04/08.
//

import SwiftUI

struct CategoryBoardView: View {
    var categoryEnum: Category
//    CategoryView에서 NavigationLink로 연결할 때 입력 파라미터로 categoryEnum 받아야 함
// 네비게이션 바에 횡 스크롤 / 리스트로 넣을 때 횡 스크롤
    @State var queryString = ""
    var boardPostsList = BoardPostListMock.boardPosts
    var body: some View {
        NavigationView {
            List {
                Section {
                    Text("\(categoryEnum.korean) 전문가의 글 모아보기")
                        .font(.caption)
                    RecommendList()
                }
                .listRowSeparator(.hidden)
                .listSectionSeparator(.visible, edges: .bottom)
                Section {
                    HStack(spacing: 2) {
                        Text("\(categoryEnum.korean) 게시물")
                        .font(.caption)
                        .frame(alignment: .leading)
                        Spacer()
                        Text("최신순")
                            .font(.caption)
                            .frame(alignment: .trailing)
                    }
                    ForEach(boardPostsList) {boardPost in
                        NavigationLink {
                            Text("스누피")
                        } label: {
                            BoardRow(boardPost: boardPost)
                        }
                    }
                }
                .listRowSeparator(.hidden)
                .listSectionSeparator(.visible, edges: .bottom)
            }
            .navigationTitle(categoryEnum.korean)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                NavigationLink {
                    PostUploadView()
                        .navigationBarHidden(true)
                } label: {
                    Image(systemName: "square.and.pencil")
                }
                }
            }
        }
        .searchable(text: $queryString, prompt: "\(categoryEnum.korean) 내 검색", suggestions: {
                    Text("내 태그").searchCompletion("내 태그")
                })
    //            검색 바 구현 -> searchable로 해서 검색창?
    }
}

struct CategoryBoardView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryBoardView(categoryEnum: Category.livingAlone, queryString: "")
    }
}
