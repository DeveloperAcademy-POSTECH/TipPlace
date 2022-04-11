//
//  CategoryView.swift
//  MC1_Team16_UNsIX_App
//
//  Created by 김수진 on 2022/04/05.
//

import SwiftUI

struct CategorySelectButton: Identifiable {
    var id: Int
    let imageUrl: String
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
        CategorySelectButton(id: 0, imageUrl: "wonsign.circle", categoryEnum: Category.economy),
        CategorySelectButton(id: 1, imageUrl: "text.book.closed", categoryEnum: Category.law),
        CategorySelectButton(id: 2, imageUrl: "figure.walk.diamond", categoryEnum: Category.safety),
        CategorySelectButton(id: 3, imageUrl: "fork.knife", categoryEnum: Category.cook),
        CategorySelectButton(id: 4, imageUrl: "house", categoryEnum: Category.livingAlone),
        CategorySelectButton(id: 5, imageUrl: "wand.and.stars", categoryEnum: Category.cleaning),
        CategorySelectButton(id: 6, imageUrl: "hammer", categoryEnum: Category.tech),
        CategorySelectButton(id: 7, imageUrl: "car", categoryEnum: Category.driving),
        CategorySelectButton(id: 8, imageUrl: "cross", categoryEnum: Category.health),
        CategorySelectButton(id: 9, imageUrl: "books.vertical", categoryEnum: Category.campusLife),
        CategorySelectButton(id: 10, imageUrl: "network", categoryEnum: Category.workingLife),
        CategorySelectButton(id: 11, imageUrl: "pawprint", categoryEnum: Category.companionLife),
        CategorySelectButton(id: 12, imageUrl: "lasso.and.sparkles", categoryEnum: Category.hobby),
        CategorySelectButton(id: 13, imageUrl: "person.2", categoryEnum: Category.relationship),
        CategorySelectButton(id: 14, imageUrl: "arrow.triangle.branch", categoryEnum: Category.etc)
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
                            CategorySelectButtonView(title: button.categoryEnum.korean, imageUrl: button.imageUrl)
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
