//
//  ExpertProfileView.swift
//  TipPlace
//
//  Created by SeungHwanKim on 2022/04/12.
//

import SwiftUI

struct ExpertProfileView: View {
    var user: UserInfo
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var backButton : some View {
        Button {
            self.presentationMode.wrappedValue.dismiss()
        }
            label: {
                HStack {
                    Image(systemName: "arrow.backward") // set image here
                        .aspectRatio(contentMode: .fit)
                        .foregroundColor(.green)
                }
        }
    }
    var bookmarkButton : some View {
        Button {
        }
            label: {
                HStack {
                    Image(systemName: "bookmark") // set image here
                        .aspectRatio(contentMode: .fit)
                        .foregroundColor(.green)
                }
        }
    }
    var body: some View {
//        ExpertInfoView 정렬: .leading -> center
        VStack(alignment: .center) {
            ExpertInfoView(userId: user.id)
            ExpertPostsView(userId: user.id)
            Spacer()
        }
            .navigationBarBackButtonHidden(true)
            .navigationTitle("프로필")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarItems(leading: backButton, trailing: bookmarkButton)
    }
}

struct AuthorProfileView: View {
    var author: Author
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var backButton : some View {
        Button {
            self.presentationMode.wrappedValue.dismiss()
        }
            label: {
                HStack {
                    Image(systemName: "arrow.backward") // set image here
                        .aspectRatio(contentMode: .fit)
                        .foregroundColor(.green)
                }
        }
    }
    var bookmarkButton : some View {
        Button {
        }
            label: {
                HStack {
                    Image(systemName: "bookmark") // set image here
                        .aspectRatio(contentMode: .fit)
                        .foregroundColor(.green)
                }
        }
    }
    var body: some View {
//        ExpertInfoView 정렬: .leading -> center
        VStack(alignment: .center) {
            ExpertInfoView(userId: author.id)
            ExpertPostsView(userId: author.id)
            Spacer()
        }
            .navigationBarBackButtonHidden(true)
            .navigationTitle("프로필")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarItems(leading: backButton, trailing: bookmarkButton)
    }
}

struct ExpertInfoView: View {
    var userId: Int
    var body: some View {
        let user: UserInfo = loadUser(userId: userId)
        VStack {
            ProfileImageView()
                .padding(EdgeInsets(top: 40, leading: 0, bottom: 10, trailing: 0))
            Text(user.name)
            .font(.system(size: 21, weight: .regular))
            .padding(EdgeInsets(top: 0, leading: 0, bottom: 10, trailing: 0))
            Text(loadDomain(userId: userId))
            .font(.system(size: 15, weight: .regular))
            .foregroundColor(.green)
            .padding(EdgeInsets(top: 0, leading: 0, bottom: 4, trailing: 0))
            Text(loadTag(userId: userId)[0])
//            배열 내 문자열을 일렬로 출력하는 방법 필요
            .font(.system(size: 12, weight: .regular))
            HStack {
                VStack {
                    Text(String(user.writtendPost.count))
                        .font(.system(size: 25, weight: .bold))
                    Text("게시물")
                        .font(.system(size: 12, weight: .regular))
                }
                VStack {
                    Text(String(user.replyPost.count))
                        .font(.system(size: 25, weight: .bold))
                    Text("유용해요")
                        .font(.system(size: 12, weight: .regular))
                }
                .padding(EdgeInsets(top: 30, leading: 70, bottom: 30, trailing: 70))
                VStack {
                    Text(String(user.markPost.count))
                        .font(.system(size: 25, weight: .bold))
                    Text("저장")
                        .font(.system(size: 12, weight: .regular))
                }
            }
        }
    }
}

struct ExpertPostsView: View {
    var userId: Int
    var body: some View {
        List {
            BoardListView(boardPostsList: ListMock.boardPosts.filter({
                $0.author.id == userId}))
//            일단 작성글/유용한 글/북마크 구별 없이 보드 배치
        }
    }
}

struct ExpertProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ExpertProfileView(user: loadUser(userId: 1))
    }
}
