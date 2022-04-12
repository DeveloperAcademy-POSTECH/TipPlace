//
//  ExpertCollectionView.swift
//  TipPlace
//
//  Created by SeungHwanKim on 2022/04/11.
//

import SwiftUI

struct ExpertSelectButton: Identifiable {
    var id: Int
    let imageUrl: String
    let categoryEnum: Category
}

struct ExpertSelectButtonView: View {
    let title: String
    let imageUrl: String
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
                        Text(title)
//                        파라미터로 넘겨준 전문가 이름
                            .font(.system(size: 10, weight: .heavy, design: .default))
                        Spacer()
                        Text("#태그제일앞에거")
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
        .padding(.top, 20)
//         추천인 섹션 칸이 너무 넓어져서 패딩을 주지 않아도 될 것 같아요!
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
                    ExpertSelectButtonView(title: button.categoryEnum.korean, imageUrl: button.imageUrl)
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
        ExpertSelectButton(id: 0, imageUrl: "wonsign.circle", categoryEnum: Category.economy),
        ExpertSelectButton(id: 1, imageUrl: "text.book.closed", categoryEnum: Category.law),
        ExpertSelectButton(id: 2, imageUrl: "figure.walk.diamond", categoryEnum: Category.safety),
        ExpertSelectButton(id: 3, imageUrl: "fork.knife", categoryEnum: Category.cook),
        ExpertSelectButton(id: 4, imageUrl: "house", categoryEnum: Category.livingAlone),
        ExpertSelectButton(id: 5, imageUrl: "wand.and.stars", categoryEnum: Category.cleaning),
        ExpertSelectButton(id: 6, imageUrl: "hammer", categoryEnum: Category.tech),
        ExpertSelectButton(id: 7, imageUrl: "car", categoryEnum: Category.driving),
        ExpertSelectButton(id: 8, imageUrl: "cross", categoryEnum: Category.health),
        ExpertSelectButton(id: 9, imageUrl: "books.vertical", categoryEnum: Category.campusLife),
        ExpertSelectButton(id: 10, imageUrl: "network", categoryEnum: Category.workingLife),
        ExpertSelectButton(id: 11, imageUrl: "pawprint", categoryEnum: Category.companionLife),
        ExpertSelectButton(id: 12, imageUrl: "lasso.and.sparkles", categoryEnum: Category.hobby),
        ExpertSelectButton(id: 13, imageUrl: "person.2", categoryEnum: Category.relationship),
        ExpertSelectButton(id: 14, imageUrl: "arrow.triangle.branch", categoryEnum: Category.etc)
    ]
}
