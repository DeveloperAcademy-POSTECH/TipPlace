//
//  PostUploadView.swift
//  TipPlace
//
//  Created by 김동락 on 2022/04/07.
//

import SwiftUI

class GlobalVarInPostUploadView: ObservableObject {
    @Published var selectedCategory: String = "카테고리 선택"
    @Published var tagSentence: String = ""
}

struct PostUploadView: View {
    @Environment(\.presentationMode) var presentationMode
    @ObservedObject var globalVar = GlobalVarInPostUploadView()
    @State var title: String = ""
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
                    TextEditor(text: $title).frame(height: 60)
                }
                // 카테고리 입력 칸
                NavigationLink(
                    destination: CategorySelectView(globalVar: globalVar)
                ) { Text(self.globalVar.selectedCategory).padding(.horizontal, 8) }
                // 태그 입력 칸
                ZStack(alignment: .topLeading) {
                    if globalVar.tagSentence.isEmpty {
                        Text("#태그는 5개까지 입력할 수 있어요")
                            .foregroundColor(Color(UIColor.placeholderText))
                            .padding(.horizontal, 8)
                            .padding(.vertical, 12)
                    }
                    ScrollView {
                        VStack {
                            WrappedLayoutForTag()
                        }
                    }
                    TextEditor(text: $globalVar.tagSentence).frame(height: 60)
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
                    Button(action: {}, label: {
                        Text("글형태")})
                    .buttonStyle(.borderless)
                    // 체크리스트 버튼
                    Button(action: {}, label: {
                        Text("체크리스트")})
                    .buttonStyle(.borderless)
                    // 사진 버튼
                    Button(action: {}, label: {
                        Text("사진")})
                    .buttonStyle(.borderless)
                    Spacer()
                }.padding(.horizontal, 8)
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

struct CategorySelectView: View {
    @Environment(\.presentationMode) var presentationMode
    @ObservedObject var globalVar: GlobalVarInPostUploadView
    let categoryArray: [String] = [
        Category.economy.korean,
        Category.law.korean,
        Category.safety.korean,
        Category.cook.korean,
        Category.livingAlone.korean,
        Category.cleaning.korean,
        Category.tech.korean,
        Category.driving.korean,
        Category.health.korean,
        Category.campusLife.korean,
        Category.workingLife.korean,
        Category.companionLife.korean,
        Category.hobby.korean,
        Category.relationship.korean,
        Category.etc.korean
    ]
    var body: some View {
        List {
            ForEach(categoryArray, id: \.self) { categoryName in
                Button(categoryName) {
                    self.globalVar.selectedCategory = categoryName
                    self.presentationMode.wrappedValue.dismiss()
                }
            }
        }
    }
}

struct PostUploadView_Previews: PreviewProvider {
    static var previews: some View {
        PostUploadView()
    }
}

struct WrappedLayoutForTag: View {
    @State var platforms = ["Ninetendo", "XBox", "PlayStation", "PlayStation 2", "PlayStation 3"]

    var body: some View {
        GeometryReader { geometry in
            self.generateContent(in: geometry)
        }
    }

    private func generateContent(in geoProxy: GeometryProxy) -> some View {
        var width = CGFloat.zero
        var height = CGFloat.zero

        return ZStack(alignment: .topLeading) {
            ForEach(self.platforms, id: \.self) { platform in self.item(for: platform)
                    .padding([.horizontal, .vertical], 4)
                    .alignmentGuide(.leading, computeValue: { dens in
                        if abs(width - dens.width) > geoProxy.size.width {
                            width = 0
                            height -= dens.height
                        }
                        let result = width
                        if platform == self.platforms.last! {
                            width = 0 // last item
                        } else {
                            width -= dens.width
                        }
                        return result
                    })
                    .alignmentGuide(.top, computeValue: { _ in
                        let result = height
                        if platform == self.platforms.last! {
                            height = 0 // last item
                        }
                        return result
                    })
            }
        }
    }

    func item(for text: String) -> some View {
        Text(text)
            .padding(.all, 5)
            .font(.body)
            .background(Color.blue)
            .foregroundColor(Color.white)
            .cornerRadius(5)
    }
}
