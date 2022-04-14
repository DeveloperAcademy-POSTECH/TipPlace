//
//  ExpertCollectionView.swift
//  TipPlace
//
//  Created by SeungHwanKim on 2022/04/11.
//

import SwiftUI

struct ExpertSelectButton:Identifiable {
    var user: [UserInfo]
    var id: Int
}

struct ExpertSelectButtonView: View {
    var user: [UserInfo]
    var body: some View {
        VStack(alignment: .leading) {
            Button {
            } label: {
                NavigationLink(destination: ExpertProfileView(userId: userId)) {
                    VStack {
                        ProfileImageView()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 60, height: 60)
                            .clipShape(Circle())
                            .overlay(Circle().stroke(Color.green, lineWidth: 2))
                        Spacer()
                        Text(user[0].name)
//                        파라미터로 넘겨준 전문가 이름
                            .font(.system(size: 10, weight: .heavy, design: .default))
                        Spacer()
                        Text(loadTag(userId: user[0].id)[0])
//                        Tag 불러오기 추가
                            .font(.system(size: 10, weight: .regular, design: .default))
                    }
                    .padding()
                }
            }
            .frame(width: 105, height: 133)
        }
        .foregroundColor(Color.black)
        .overlay(
            RoundedRectangle(cornerRadius: 25)
                .stroke(Color.gray, lineWidth: 2)
        )
    }
}

struct AuthorSelectButtonView: View {
    var author: Author
    var body: some View {
        VStack(alignment: .leading) {
            Button {
            } label: {
                NavigationLink(destination: ExpertProfileView()) {
                    VStack {
                        ProfileImageView()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 60, height: 60)
                            .clipShape(Circle())
                            .overlay(Circle().stroke(Color.green, lineWidth: 2))
                        Spacer()
                        Text(author.name)
//                        파라미터로 넘겨준 전문가 이름
                            .font(.system(size: 10, weight: .heavy, design: .default))
                        Spacer()
                        Text(loadTag(userId: author.id)[0])
//                        Tag 불러오기 추가
                            .font(.system(size: 10, weight: .regular, design: .default))
                    }
                    .padding()
                }
            }
            .frame(width: 105, height: 133)
        }
        .foregroundColor(Color.black)
        .overlay(
            RoundedRectangle(cornerRadius: 25)
                .stroke(Color.gray, lineWidth: 2)
        )
    }
}

struct ExpertCollectionView: View {
    var columns: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    let buttons: [ExpertSelectButton] = ExpertButtonStore.buttons
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 15) {
                ForEach(buttons) { button in
                    ExpertSelectButtonView(user: button.user)
                }
            }
            .padding()
        }
        .navigationTitle("전문가 모아보기")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct ExpertCollectionView_Previews: PreviewProvider {
    static var previews: some View {
        ExpertCollectionView()
    }
}
struct ExpertButtonStore {
    static var buttons = [
        ExpertSelectButton(user: loadUser(userId: 1), id:1),
        ExpertSelectButton(user: loadUser(userId: 2), id:2),
        ExpertSelectButton(user: loadUser(userId: 3), id:3),
        ExpertSelectButton(user: loadUser(userId: 4), id:4),
        ExpertSelectButton(user: loadUser(userId: 5), id:5),
        ExpertSelectButton(user: loadUser(userId: 6), id:6),
        ExpertSelectButton(user: loadUser(userId: 7), id:7),
        ExpertSelectButton(user: loadUser(userId: 8), id:8),
        ExpertSelectButton(user: loadUser(userId: 9), id:9),
        ExpertSelectButton(user: loadUser(userId: 10), id:10),
        ExpertSelectButton(user: loadUser(userId: 53), id:11),
        ExpertSelectButton(user: loadUser(userId: 54), id:12),
        ExpertSelectButton(user: loadUser(userId: 55), id:13),
        ExpertSelectButton(user: loadUser(userId: 56), id:14),
        ExpertSelectButton(user: loadUser(userId: 57), id:15)

    ]
}
