//
//  MainBoardView.swift
//  MC1_Team16_UNsIX_App
//
//  Created by 리아 on 2022/04/05.
//

import SwiftUI

struct MainBoardView: View {
    @State var searchText: String = ""
    @State var selectedTag: String = "전체"
    var body: some View {
        // TODO: scroll시 서치바 사라지고 태그 남기기
        NavigationView {
            List {
                Section {
                    TagListView(selectedTag: $selectedTag)
                }
                .listRowBackground(Color.clear)
                .listRowSeparator(.hidden)
                Section {
                    MainBoardList(selectedTag: $selectedTag)
                }
                .listRowBackground(Color.clear)
            }
            .listStyle(.plain)
            .navigationTitle("정보")
            .searchable(text: $searchText,
                        placement: .navigationBarDrawer(displayMode: .automatic),
                        prompt: "정보를 검색해보세요") {
                Text("apple").searchCompletion("apple")
                Text("banana").searchCompletion("banana")
                Text("orange").searchCompletion("orange")
                Text("mango").searchCompletion("mango")
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        print("writing..")
                    } label: {
                        Image(systemName: "square.and.pencil")
                    }
                }
            }
        }
    }
}

struct MainBoardView_Previews: PreviewProvider {
    static var previews: some View {
        MainBoardView()
    }
}
