//
//  CategoryBoardView.swift
//  TipPlace
//
//  Created by Junyeong Park on 2022/04/08.
//

import SwiftUI

struct CategoryBoardView: View {
    var categoryEnum: Category
    @State var queryString = ""
    @State var selectedOption = "최신순"
    @State private var showSheet = false
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
                    VStack {
                        HStack {
                            Text("\(categoryEnum.korean) 게시물")
                            Spacer()
                            Button(action: {showSheet.toggle()}) {
                                Text(selectedOption)
                                Image(systemName: "arrow.up.arrow.down")}
                                .confirmationDialog("정렬", isPresented: $showSheet) {
                                    Button("최신순") {
                                        selectedOption = "최신순"
                                        showSheet.toggle()
                                    }
                                    Button("인기순") {
                                        selectedOption = "인기순"
                                        showSheet.toggle()
                                    }
                                    Button("실용순") {
                                        selectedOption = "실용순"
                                        showSheet.toggle()
                                    }
                                }
                        }
                        ForEach(boardPostsList) {boardPost in
                            NavigationLink {
                            DetailPostView()
                            } label: { BoardRow(boardPost: boardPost)
                            }
                        }
                    }
                }
            }
            .refreshable {
                print("refresh")
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
