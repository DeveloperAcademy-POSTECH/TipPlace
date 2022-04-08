//
//  MainBoardView.swift
//  MC1_Team16_UNsIX_App
//
//  Created by 리아 on 2022/04/05.
//

import SwiftUI

struct MainBoardView: View {
    @State var searchText: String = ""
    var recommendedTags: [String] = load(fileName: "RecommendedTagData.json")
    var body: some View {
        NavigationView {
            VStack {
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        ForEach(recommendedTags, id: \.self) { tag in
                            Button(action: { print(tag) }) {
                                Text(tag)
                                    .padding(.vertical, 8)
                                    .padding(.horizontal, 15)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 10)
                                            .stroke(Color.blue, lineWidth: 2)
                                    )
                            }
                        }
                        .padding(.vertical, 15)
                        .padding(.leading, 10)
                    }
                }
                .padding(.leading, 15)
                Spacer()
                Text("")
            }
            .navigationTitle("정보")
            .searchable(text: $searchText, prompt: "정보를 검색해보세요") {
                Text("apple").searchCompletion("apple")
                Text("banana").searchCompletion("banana")
                Text("orange").searchCompletion("orange")
                Text("mango").searchCompletion("mango")
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: { print("writing..") }) {
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
