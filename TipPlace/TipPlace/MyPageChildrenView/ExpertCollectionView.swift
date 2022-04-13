//
//  ExpertCollectionView.swift
//  TipPlace
//
//  Created by SeungHwanKim on 2022/04/11.
//

import SwiftUI

struct ExpertSelectButton: Identifiable {
    var id: Int
}

struct ExpertSelectButtonView: View {
    let userId: Int
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
                        Text(loadUser(userId:userId).name)
//                        파라미터로 넘겨준 전문가 이름
                            .font(.system(size: 10, weight: .heavy, design: .default))
                        Spacer()
                        Text(loadTag(userId:userId)[0])
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
                    ExpertSelectButtonView(userId: 1)
//                    userID 파라미터 추가
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
        ExpertSelectButton(id: 0),
        ExpertSelectButton(id: 1),
        ExpertSelectButton(id: 2),
        ExpertSelectButton(id: 3),
        ExpertSelectButton(id: 4),
        ExpertSelectButton(id: 5),
        ExpertSelectButton(id: 6),
        ExpertSelectButton(id: 7),
        ExpertSelectButton(id: 8),
        ExpertSelectButton(id: 9),
        ExpertSelectButton(id: 10),
        ExpertSelectButton(id: 11),
        ExpertSelectButton(id: 12),
        ExpertSelectButton(id: 13),
        ExpertSelectButton(id: 14)
    ]
}
