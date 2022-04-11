//
//  ImageCollectionView.swift
//  TipPlace
//
//  Created by 김수진 on 2022/04/11.
//

import SwiftUI

extension DetailPostView {
    struct ContentImage: Identifiable {
        init(imageUrl: String) {
            id = imageUrl
            image = Image(systemName: "checkmark.circle")
        }
        let id: String
        var image: Image?
    }

    struct ImageCell: View {
        let imageData: ContentImage
        var body: some View {
            guard let image = imageData.image else {
                return Image("")
                    .resizable()
                    .frame(width: 95, height: 95, alignment: .center)
            }
            return image
                .resizable()
                .frame(width: 95, height: 95, alignment: .center)
        }
    }

    // TODO: cell의 재사용 필요
    struct ImageCollecionView: View {
        @State var imageDatas = [ContentImage]()

        var body: some View {
            ScrollView(.horizontal) {
                HStack {
                    ForEach(imageDatas) {
                        DetailPostView.ImageCell(imageData: $0)
                            .background(.yellow)
                            .cornerRadius(8)
                            .padding(2)
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
