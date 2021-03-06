//
//  PostUploadView.swift
//  TipPlace
//
//  Created by 김동락 on 2022/04/07.
//

import SwiftUI

struct PostUploadView: View {
    @Environment(\.presentationMode) var presentationMode
    @State private var showSourceTypeSelection = false
    @State private var showPhotoLibrary = false
    @State private var showCamera = false
    @State private var images: [UIImage] = []
    @State private var title: String = ""
    @State private var category: Category?
    @State private var tagSentence: String = ""
    @State private var tags: [String] = []
    @State private var content: String = ""
    @State private var isAnonymous = true
    @State private var showingAlert = false
    @State private var alertMessage: String = ""
    @FocusState private var isContentFocused: Bool
    // 태그 필터링하기
    func tagFiltering() {
        if tagSentence.hasSuffix(" ") || tagSentence.hasSuffix("\n") {
            let trimmedTagSentence = tagSentence.trimmingCharacters(
                in: .whitespacesAndNewlines)
            if trimmedTagSentence.hasPrefix("#") {
                let startIdx: String.Index = trimmedTagSentence.index(trimmedTagSentence.startIndex, offsetBy: 1)
                tags.append(String(trimmedTagSentence[startIdx...]))
                tagSentence = ""
            } else {
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
        // author[0] 으로 로그인 되어있다고 가정
        // 서버가 없어서 사진은 업로드 불가
        // 리스트에 데이터를 붙이는 식으로 임시 구현
        ListMock.boardPosts.append(
            BoardPost(
                id: ListMock.boardPosts.count + 1,
                isAnonymous: isAnonymous,
                title: title,
                content: content,
                author: ListMock.authors[0],
                createdAt: Date.now,
                thumnailImageUrl: nil,
                usefulCount: 0,
                replyCount: 0,
                tag: tags,
                category: category!
            )
        )
        ListMock.detailPosts.append(
            DetailPostModel(
                id: ListMock.detailPosts.count + 1,
                category: category!,
                isAnonymous: isAnonymous,
                title: title,
                content: content,
                author: ListMock.authors[0],
                createdAt: Date.now,
                images: [],
                tags: tags,
                usefulCount: 0,
                comment: [],
                idWithUseful: [],
                idWithReply: [],
                idWithMark: [])
        )
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
                                    self.showSourceTypeSelection.toggle()
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
                            })
                            .foregroundColor(Color.gray)
                            .buttonStyle(.borderless)
                            .cornerRadius(10)
                            .padding(10)
                            // 앨범 열지, 사진 촬영할지 결정
                            .confirmationDialog("", isPresented: $showSourceTypeSelection) {
                                Button("사진 촬영") {
                                    self.showCamera.toggle()
                                }
                                Button("앨범 선택") {
                                    self.showPhotoLibrary.toggle()
                                }
                            }
                            .sheet(isPresented: $showCamera) {
                                ImagePicker(sourceType: .camera, selectedImages: $images)
                            }
                            .sheet(isPresented: $showPhotoLibrary) {
                                ImagePicker(sourceType: .photoLibrary, selectedImages: $images)
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
                    ) {
                        if category == nil {
                            Text("카테고리 선택").padding(.horizontal, 8)
                        } else {
                            Text(category!.korean).padding(.horizontal, 8)
                        }
                    }
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
                            if title.isEmpty {
                                alertMessage = "제목을 입력해주세요"
                                showingAlert = true
                            } else if category == nil {
                                alertMessage = "카테고리를 선택해주세요"
                                showingAlert = true
                            } else if content.isEmpty {
                                alertMessage = "내용을 입력해주세요"
                                showingAlert = true
                            } else {
                                upload()
                                self.presentationMode.wrappedValue.dismiss()
                            }
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
                .alert("", isPresented: $showingAlert) {
                    Button("확인") {}
                } message: {
                    Text(alertMessage)
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
    @Binding var category: Category?
    let categoryArray: [Category] = [
        Category.economy,
        Category.law,
        Category.safety,
        Category.cook,
        Category.livingAlone,
        Category.cleaning,
        Category.tech,
        Category.driving,
        Category.health,
        Category.campusLife,
        Category.workingLife,
        Category.companionLife,
        Category.hobby,
        Category.relationship,
        Category.etc
    ]
    var body: some View {
        List {
            ForEach(categoryArray, id: \.self) { category in
                Button(category.korean) {
                    self.category = category
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
