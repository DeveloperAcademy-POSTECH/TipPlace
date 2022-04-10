//
//  PostUploadView.swift
//  TipPlace
//
//  Created by 김동락 on 2022/04/07.
//

import SwiftUI

struct PostUploadView: View {
    @Environment(\.presentationMode) var presentationMode
    @State private var showSheet = false
    @State private var images: [UIImage] = []
    @State private var title: String = ""
    @State private var category: String = "카테고리 선택"
    @State private var tagSentence: String = ""
    @State private var tags: [String] = []
    @State private var content: String = ""
    @State private var isAnonymous = true
    @FocusState private var isContentFocused: Bool
    // 태그 필터링하기
    func tagFiltering() {
        if tagSentence.hasSuffix(" ") || tagSentence.hasSuffix("\n") {
            let trimmedTagSentence = tagSentence.trimmingCharacters(
                in: .whitespacesAndNewlines)
            if trimmedTagSentence.hasPrefix("#") {
                tags.append(trimmedTagSentence)
                tagSentence = ""
            }
        }
    }
    // UIImage를 Base64 형태로 바꿔주기
    func uiToBase64(uiImg: UIImage) -> String {
        return (uiImg.jpegData(compressionQuality: 1)?.base64EncodedString())!
    }
    // 서버에 데이터 보내기
    func upload() {
        var base64images: [String] = []
        for img in images {
            base64images.append(uiToBase64(uiImg: img))
        }
        print("[사진 개수] " + String(images.count))
        print("[글 제목] " + title)
        print("[카테고리] " + category)
        tags.enumerated().forEach {
            print("[태그\($0)] \($1)")
        }
        print("[게시글] " + content)
        print("[익명여부] " + (isAnonymous ? "O" : "X"))
    }
    var body: some View {
        NavigationView {
            ScrollViewReader { proxy in
                List {
                    // 사진 추가 칸
                    ScrollView(.horizontal) {
                        HStack {
                            // 사진 추가 버튼
                            Button(action: {
                                if images.count < 10 {
                                    showSheet.toggle()
                                }
                            }, label: {
                                VStack {
                                    Image(systemName: "camera.fill")
                                    Text("\(images.count)/10")
                                }
                                .padding(10)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 10)
                                                    .stroke(Color.gray, lineWidth: 3)
                                )
                            }).foregroundColor(Color.gray)
                            .buttonStyle(.borderless)
                            .cornerRadius(10)
                            .padding(10)
                            .sheet(isPresented: $showSheet) {
                                ImagePicker(sourceType: .photoLibrary, selectedImages: self.$images)
                            }
                            // 추가된 사진 미리보기
                            ForEach(images, id: \.self) { img in
                                ZStack(alignment: .topTrailing) {
                                    Image(uiImage: img)
                                        .resizable()
                                        .frame(width: 55, height: 55)
                                        .aspectRatio(contentMode: .fill)
                                        .padding(3)
                                    Button(action: {
                                        let imgIdx = images.firstIndex(of: img)
                                        images.remove(at: imgIdx!)
                                    }, label: {
                                        Image(systemName: "x.square.fill")
                                    }).foregroundColor(Color.black)
                                        .frame(width: 15, height: 15)
                                }
                            }
                        }
                    }
                    // 제목 입력 칸
                    ZStack(alignment: .topLeading) {
                        if title.isEmpty {
                            Text("글 제목")
                                .foregroundColor(Color(UIColor.placeholderText))
                                .padding(.horizontal, 8)
                                .padding(.vertical, 10)
                        }
                        TextEditor(text: $title).opacity(title.isEmpty ? 0.25 : 1)
                        Text(title).opacity(0).padding(.all, 8)
                    }.id("bottomOfTitle")
                    // 카테고리 입력 칸
                    NavigationLink(
                        destination: CategorySelectView(category: $category)
                    ) { Text(category).padding(.horizontal, 8) }
                    // 태그 입력 칸
                    VStack(alignment: .leading) {
                        ZStack(alignment: .topLeading) {
                            if tags.count < 5 {
                                // tag의 개수가 5보다 적고 아무것도 입력되지 않았을 때 나타나는 PlaceHolder
                                if tagSentence.isEmpty {
                                    Text("#태그는 5개까지 입력할 수 있어요")
                                        .foregroundColor(Color(UIColor.placeholderText))
                                        .padding(.horizontal, 8)
                                        .padding(.top, 12)
                                }
                                // tag 작성 칸
                                TextEditor(text: $tagSentence)
                                    .opacity(tagSentence.isEmpty ? 0.25 : 1)
                                    .onChange(of: tagSentence) {_ in
                                        tagFiltering()
                                    }
                                Text(tagSentence).opacity(0).padding(8)
                            } else {
                                // tag의 개수가 5개가 되면 보여주는 PlaceHolder
                                Text("더 추가하려면 기존 태그를 삭제해주세요")
                                    .foregroundColor(Color(UIColor.placeholderText))
                                    .padding(.horizontal, 8)
                                    .padding(.top, 12)
                                    .padding(.bottom, 7)
                            }
                        }
                        ScrollView(.horizontal) {
                            HStack {
                                // 추가된 태그 보기
                                ForEach(tags, id: \.self) { tag in
                                    ZStack(alignment: .topTrailing) {
                                        Text(tag)
                                               .padding(5)
                                               .font(.body)
                                               .background(Color.gray)
                                               .foregroundColor(Color.white)
                                               .cornerRadius(5)
                                               .padding(3)
                                               .padding(.bottom, 8)
                                        Button(action: {
                                            let tagIdx = tags.firstIndex(of: tag)
                                            tags.remove(at: tagIdx!)
                                        }, label: {
                                            Image(systemName: "x.square.fill")
                                        }).foregroundColor(Color.black)
                                            .frame(width: 15, height: 15)
                                    }
                                }
                            }
                        }
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
                            .focused($isContentFocused)
                            .opacity(content.isEmpty ? 0.25 : 1)
                            .frame(minHeight: isContentFocused ? 100 : 400)
                        Text(content).opacity(0).padding(.all, 8)
                    }.id("bottomOfContent")
                }
                .listStyle(GroupedListStyle())
                .navigationBarTitle("글쓰기", displayMode: .inline)
                    .navigationBarItems(
                        // 취소 누를 경우의 동작
                        leading: Button("취소") {
                            self.presentationMode.wrappedValue.dismiss()
                        },
                        // 업로드 누를 경우의 동작
                        trailing: Button("업로드") {
                            upload()
                            self.presentationMode.wrappedValue.dismiss()
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

struct PostUploadView_Previews: PreviewProvider {
    static var previews: some View {
        PostUploadView()
    }
}

// 카테고리 선택 시 목록 나오게 하는 View
struct CategorySelectView: View {
    @Environment(\.presentationMode) var presentationMode
    @Binding var category: String
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
                    category = categoryName
                    self.presentationMode.wrappedValue.dismiss()
                }
            }
        }
    }
}

// CheckBox가 구현된 View
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

// 앨범에 접근 가능하게 하는 View
struct ImagePicker: UIViewControllerRepresentable {
    @Environment(\.presentationMode) private var presentationMode
    var sourceType: UIImagePickerController.SourceType = .photoLibrary
    @Binding var selectedImages: [UIImage]

    func makeUIViewController(context: UIViewControllerRepresentableContext<ImagePicker>) -> UIImagePickerController {
        let imagePicker = UIImagePickerController()
        imagePicker.allowsEditing = false
        imagePicker.sourceType = sourceType
        imagePicker.delegate = context.coordinator

        return imagePicker
    }

    func updateUIViewController(_ uiViewController: UIImagePickerController,
                                context: UIViewControllerRepresentableContext<ImagePicker>) {
    }

    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }

    final class Coordinator: NSObject, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
        var parent: ImagePicker

        init(_ parent: ImagePicker) {
            self.parent = parent
        }

        func imagePickerController(_ picker: UIImagePickerController,
                                   didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey: Any]) {
            if let image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
                parent.selectedImages.append(image)
            }
            parent.presentationMode.wrappedValue.dismiss()
        }
    }
}

// 태그 형식으로 쓸지 고려중인 것
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
