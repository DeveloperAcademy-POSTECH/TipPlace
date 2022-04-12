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
    @State private var showSheet = false
    @State private var selectedOption = "최신순"
    var boardPostsList: [BoardPost] = ListMock.boardPosts
    var body: some View {
        NavigationView {
            List {
                Section(footer: Text("")) {
                    Text("\(categoryEnum.korean) 전문가의 글 모아보기")
                        .font(.caption)
                    RecommendList()
                }
                .listRowSeparator(.hidden)
                .listSectionSeparator(.visible, edges: .bottom)
                Section {
                    HStack {
                        Text("\(categoryEnum.korean) 게시물")
                        Spacer()
                        Button(action: {
                            showSheet.toggle()})
                        {
                            Text(selectedOption)
                            Image(systemName: "arrow.up.arrow.down")
                        }
                        .confirmationDialog("정렬", isPresented: $showSheet) {
                                Button("최신순") {
                                    selectedOption = "최신순"
                                }
                                Button("인기순") {
                                    selectedOption = "인기순"
                                }
                                Button("실용순") {
                                    selectedOption = "실용순"
                                }
                        }
//                        정렬 피커 선택
                    }
                    .font(.caption)
                    BoardListView(boardPostsList: loadPosts(selectedOption: selectedOption, categorayRawValue: 1))
//                    ForEach문에 전달할 배열을 loadPosts에서 변경: 정렬
                }
            }
            .refreshable {
//                최신 업데이트된 데이터가 있는지 확인. MockData로 어떻게 확인?
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
        .searchable(text: $queryString, placement: .navigationBarDrawer(displayMode: .automatic), prompt: "\(categoryEnum.korean) 내 검색", suggestions: {
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

struct BoardListView: View {
    var boardPostsList: [BoardPost]
    var body: some View {
        ForEach(boardPostsList) { boardPost in
            NavigationLink {
                DetailPostView(postId: boardPost.id)
                //     스누피 머지 이후 DetailPostView(boardPost.id) 수정
            } label: { BoardRow(boardPost: boardPost)
                    .padding(.vertical, 5)
            }
            
        }
        .listStyle(.inset)
    }
}
