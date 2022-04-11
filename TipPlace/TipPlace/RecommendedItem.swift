//
//  RecommendedItem.swift
//  TipPlace
//
//  Created by Junyeong Park on 2022/04/08.
//

import SwiftUI

// 프로필 URL -> 디폴트로 person 이미지 사용, 함수로 처리해야 함, 프로필 크기 지정 또한 해야 한다
// 전문가 여부 -> 어디에서 specialDomain 값 확인해서 필터링?
// Recommended 태그도 긇어오자...

struct RecommendedItem: View {
    var rec: Author
    var body: some View {
        VStack {
            Image(systemName: "person")
                .resizable()
                .scaledToFit()
                .frame(width: 30, height: 30, alignment: .center)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                .overlay {
                    Circle().stroke(.white, lineWidth: 1)
                }
                .shadow(radius: 2)
            Text(rec.name)
            Text("#자취방구하기")
        }
    }
}

struct RecommendedItem_Previews: PreviewProvider {
    static var previews: some View {
        RecommendedItem(rec: RecommendedMock.recommended[0])
    }
}
