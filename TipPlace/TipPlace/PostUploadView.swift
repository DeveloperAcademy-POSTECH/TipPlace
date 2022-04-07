//
//  PostUploadView.swift
//  TipPlace
//
//  Created by 김동락 on 2022/04/07.
//

import SwiftUI

struct PostUploadView: View {
    @Environment(\.presentationMode) var presentationMode
    @State var title: String = ""
    @State var tag: String = ""
    @State var content: String = ""
    var body: some View {
        NavigationView {
            Form {
                // 제목 입력 칸
                ZStack(alignment: .topLeading) {
                    if title.isEmpty {
                        Text("글 제목")
                            .foregroundColor(Color(UIColor.placeholderText))
                            .padding(.horizontal, 8)
                            .padding(.vertical, 10)
                    }
                    TextEditor(text: $title).frame(height: 40)
                }
                // 카테고리 입력 칸
                NavigationLink(destination: List {
                    Text("1")
                    Text("2")
                    Text("3")
                    Text("4")
                    Text("5")
                }) {
                    Text("카테고리 선택")
                }
                // 태그 입력 칸
                ZStack(alignment: .topLeading) {
                    if tag.isEmpty {
                        Text("#태그는 5개까지 입력할 수 있어요")
                            .foregroundColor(Color(UIColor.placeholderText))
                            .padding(.horizontal, 8)
                            .padding(.vertical, 12)
                    }
                    TextEditor(text: $tag).frame(height: 80)
                }
                // 게시글 입력 칸
                ZStack(alignment: .topLeading) {
                    if content.isEmpty {
                        Text("게시글을 작성해주세요")
                            .foregroundColor(Color(UIColor.placeholderText))
                            .padding(.horizontal, 8)
                            .padding(.vertical, 12)
                    }
                    TextEditor(text: $content).frame(height: 300)
                }
                HStack {
                    // 글형태 버튼
                    Button("글형태") {}
                    // 체크리스트 버튼
                    Button("체크리스트") {}
                    // 사진 버튼
                    Button("사진") {}
                    Spacer()
                }
            }.navigationBarTitle("글쓰기", displayMode: .inline)
                .navigationBarItems(
                    // 취소 누를 경우의 동작
                    leading: Button("취소") {
                        self.presentationMode.wrappedValue.dismiss()
                    },
                    // 업로드 누를 경우의 동작
                    trailing: Button("업로드") {
                        self.presentationMode.wrappedValue.dismiss()
                        // 서버에 데이터 보내기 코드 작성 필요
                    }
                )
        }
    }
}

struct PostUploadView_Previews: PreviewProvider {
    static var previews: some View {
        PostUploadView()
    }
}
