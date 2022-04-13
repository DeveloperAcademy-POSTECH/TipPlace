//
//  ImageCollectionView.swift
//  TipPlace
//
//  Created by 김수진 on 2022/04/11.
//

import SwiftUI

extension DetailPostView {
    struct ContentImage: Identifiable {
        init(imageUrl: URL) {
            id = UUID().uuidString
            url = imageUrl
            image = Image(systemName: "checkmark.circle")
        }
        let id: String
        let url: URL
        var image: Image?
    }

    // TODO: cell의 재사용 필요
    struct ImageCollecionView: View {
        @State var imageDatas = [ContentImage]()

        var body: some View {
            ScrollView(.horizontal) {
                HStack {
                    ForEach(imageDatas) {
                        AsyncImage(url: $0.url) { image in
                            image
                                .resizable()
                                .frame(width: 95, height: 95, alignment: .center)
                                .cornerRadius(8)
                                .padding(2)
                        } placeholder: {
                            Text("")
                        }
                    }
                }
            }
        }
    }
}

struct ImageCollectionView_Previews: PreviewProvider {
    static var previews: some View {
        DetailPostView(postId: 1)
    }
}
