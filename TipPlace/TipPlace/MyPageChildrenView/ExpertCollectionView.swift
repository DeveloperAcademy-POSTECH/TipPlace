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
                print("버튼 눌림")
            } label: {
                VStack {
                    Image(systemName: imageUrl)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 48, height: 54)
                    Spacer()
                    Text(title)
                        .font(.subheadline)
                }
            }
        }.foregroundColor(Color.black)
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
            LazyVGrid(columns: columns, spacing: 20) {
                ForEach(buttons) { button in
                    CategorySelectButtonView(title: button.categoryEnum.korean, imageUrl: button.imageUrl)
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
//
//struct ExpertMock {
//    static var expertList = [
//        
//    ]
//}
//
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
