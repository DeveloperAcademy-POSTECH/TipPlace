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

    var body: some View {
        NavigationView {
            VStack {
                Text("\(categoryEnum.korean) 전문가의 글 모아보기").padding()
                RecommendList()
                Divider()
                HStack {
                    Text("\(categoryEnum.korean) 게시물")
                    Text("정렬")
                    Button {
                        print("sorting")
                    } label: {
                        ZStack {
                            Image(systemName: "arrow.up.arrow.down")
                        }
                    }
                }
                BoardList()
            }
            .navigationTitle(categoryEnum.korean)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                NavigationLink {
                    Text("Dophi's writing")
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