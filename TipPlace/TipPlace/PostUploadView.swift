//
//  PostUploadView.swift
//  TipPlace
//
//  Created by 김동락 on 2022/04/07.
//

import SwiftUI

class GlobalVarInPostUploadView: ObservableObject {
    @Published var selectedCategory: String = "카테고리 선택"
}

struct PostUploadView: View {
    @Environment(\.presentationMode) var presentationMode
    @ObservedObject var globalVar = GlobalVarInPostUploadView()
    @State var title: String = ""
    @State var tagSentence: String = ""
    @State var content: String = ""
    @State var isAnonymous = true
    var body: some View {
        NavigationView {
            ScrollViewReader { proxy in
                Form {
                    // 제목 입력 칸
                    ZStack(alignment: .topLeading) {
                        if title.isEmpty {
                            Text("글 제목")
                                .foregroundColor(Color(UIColor.placeholderText))
                                .padding(.horizontal, 8)
                                .padding(.vertical, 10)
                        }
                        TextEditor(text: $title)
                        Text(title).opacity(0).padding(.all, 8)
                    }.id("bottomOfTitle")
                    // 카테고리 입력 칸
                    NavigationLink(
                        destination: CategorySelectView(globalVar: globalVar)
                    ) { Text(self.globalVar.selectedCategory).padding(.horizontal, 8) }
                    // 태그 입력 칸
                    ZStack(alignment: .topLeading) {
                        if tagSentence.isEmpty {
                            Text("#태그는 5개까지 입력할 수 있어요")
                                .foregroundColor(Color(UIColor.placeholderText))
                                .padding(.horizontal, 8)
                                .padding(.vertical, 12)
                        }
                        TextEditor(text: $tagSentence)
                        Text(tagSentence).opacity(0).padding(.all, 8)
                    }.id("bottomOfTagSentence")
                    // 게시글 입력 칸
                    ZStack(alignment: .topLeading) {
                        if content.isEmpty {
                            Text("게시글을 작성해주세요")
                                .foregroundColor(Color(UIColor.placeholderText))
                                .padding(.horizontal, 8)
                                .padding(.vertical, 12)
                        }
                        TextEditor(text: $content)
                            .frame(minHeight: 150)
                        Text(content).opacity(0).padding(.all, 8)
                    }.id("bottomOfContent")
                }.navigationBarTitle("글쓰기", displayMode: .inline)
                    .navigationBarItems(
                        // 취소 누를 경우의 동작
                        leading: Button("취소") {
                            self.presentationMode.wrappedValue.dismiss()
                        },
                        // 업로드 누를 경우의 동작
                        trailing: Button("업로드") {
                            self.presentationMode.wrappedValue.dismiss()
                            // 서버에 데이터 보내는 코드 작성 필요
                            print("글 제목: " + title)
                            print("카테고리: " + globalVar.selectedCategory)
                            print("태그문장: " + tagSentence)
                            print("게시글: " + content)
                        }
                    )
                .toolbar {
                    ToolbarItemGroup(placement: .keyboard) {
                        Button(action: {}, label: {
                            Image(systemName: "textformat")})
                        // 체크리스트 버튼
                        Button(action: {}, label: {
                            Image(systemName: "list.bullet")})
                        Spacer()
                        // 익명 여부
                        HStack {
                            CheckBoxView(checked: $isAnonymous)
                            Text("익명")
                        }
                    }
                }
                .onChange(of: title) { _ in
                    proxy.scrollTo("bottomOfTitle", anchor: .bottom)
                }
                .onChange(of: tagSentence) { _ in
                    proxy.scrollTo("bottomOfTagSentence", anchor: .bottom)
                }
                .onChange(of: content) { _ in
                    proxy.scrollTo("bottomOfContent", anchor: .bottom)
                }
            }
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

struct CheckBoxView: View {
    @Binding var checked: Bool

    var body: some View {
        Image(systemName: checked ? "checkmark.square.fill" : "square")
            .foregroundColor(checked ? Color(UIColor.systemBlue) : Color.secondary)
            .onTapGesture {
                self.checked.toggle()
            }
    }
}

// 태그 형식으로 쓰려 고려중인 것
// struct WrappedLayoutForTag: View {
//    @State var platforms = ["Ninetendo", "XBox", "PlayStation", "PlayStation 2", "PlayStation 3"]
//
//    var body: some View {
//        GeometryReader { geometry in
//            self.generateContent(in: geometry)
//        }
//    }
//
//    private func generateContent(in geoProxy: GeometryProxy) -> some View {
//        var width = CGFloat.zero
//        var height = CGFloat.zero
//
//        return ZStack(alignment: .topLeading) {
//            ForEach(self.platforms, id: \.self) { platform in self.item(for: platform)
//                    .padding([.horizontal, .vertical], 4)
//                    .alignmentGuide(.leading, computeValue: { dens in
//                        if abs(width - dens.width) > geoProxy.size.width {
//                            width = 0
//                            height -= dens.height
//                        }
//                        let result = width
//                        if platform == self.platforms.last! {
//                            width = 0 // last item
//                        } else {
//                            width -= dens.width
//                        }
//                        return result
//                    })
//                    .alignmentGuide(.top, computeValue: { _ in
//                        let result = height
//                        if platform == self.platforms.last! {
//                            height = 0 // last item
//                        }
//                        return result
//                    })
//            }
//        }
//    }
//
//    func item(for text: String) -> some View {
//        Text(text)
//            .padding(.all, 5)
//            .font(.body)
//            .background(Color.blue)
//            .foregroundColor(Color.white)
//            .cornerRadius(5)
//    }
// }
