//
//  CategoryView.swift
//  MC1_Team16_UNsIX_App
//
//  Created by 김수진 on 2022/04/05.
//

import SwiftUI

struct CategorySelectButton: Identifiable {
    var id: Int
    let title, imageUrl: String
    let categoryEnum: Category
}

struct CategorySelectButtonView: View {
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

struct MockStore {
    static var buttons = [
        CategorySelectButton(id: 0, title: Category.economy.korean, imageUrl: "wonsign.circle", categoryEnum: Category.economy),
        CategorySelectButton(id: 1, title: Category.law.korean, imageUrl: "text.book.closed", categoryEnum: Category.economy),
        CategorySelectButton(id: 2, title: Category.safety.korean, imageUrl: "figure.walk.diamond", categoryEnum: Category.economy),
        CategorySelectButton(id: 3, title: Category.cook.korean, imageUrl: "fork.knife", categoryEnum: Category.economy),
        CategorySelectButton(id: 4, title: Category.livingAlone.korean, imageUrl: "house", categoryEnum: Category.economy),
        CategorySelectButton(id: 5, title: Category.cleaning.korean, imageUrl: "wand.and.stars", categoryEnum: Category.economy),
        CategorySelectButton(id: 6, title: Category.tech.korean, imageUrl: "hammer", categoryEnum: Category.economy),
        CategorySelectButton(id: 7, title: Category.driving.korean, imageUrl: "car", categoryEnum: Category.economy),
        CategorySelectButton(id: 8, title: Category.health.korean, imageUrl: "cross", categoryEnum: Category.economy),
        CategorySelectButton(id: 9, title: Category.campusLife.korean, imageUrl: "books.vertical", categoryEnum: Category.economy),
        CategorySelectButton(id: 10, title: Category.workingLife.korean, imageUrl: "network", categoryEnum: Category.economy),
        CategorySelectButton(id: 11, title: Category.companionLife.korean, imageUrl: "pawprint", categoryEnum: Category.economy),
        CategorySelectButton(id: 12, title: Category.hobby.korean, imageUrl: "lasso.and.sparkles", categoryEnum: Category.economy),
        CategorySelectButton(id: 13, title: Category.relationship.korean, imageUrl: "person.2", categoryEnum: Category.economy),
        CategorySelectButton(id: 14, title: Category.etc.korean, imageUrl: "arrow.triangle.branch", categoryEnum: Category.economy)
    ]
}

struct CategoryView: View {
    var columns: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    let buttons: [CategorySelectButton] = MockStore.buttons
    var body: some View {
        HStack {
            NavigationView {
                ScrollView {
                    LazyVGrid(columns: columns, spacing: 20) {
                        ForEach(buttons) { button in
                            CategorySelectButtonView(title: button.title, imageUrl: button.imageUrl)
                        }
                    }
                    .padding()
                }
                .navigationTitle("카테고리")
            }
        }
    }
}

struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryView()
    }
}
