//
//  MyPageChildrenViewList.swift
//  TipPlace
//
//  Created by SeungHwanKim on 2022/04/12.
//

import SwiftUI

struct MyPageChildrenViewList: View {
    var title: String
    var body: some View {
        if title == "관심 카테고리 설정" {
            Text("ghgh")
        }
    }
}

struct MyPageChildrenViewList_Previews: PreviewProvider {
    static var previews: some View {
        MyPageChildrenViewList(title: "관심 카테고리 설정")
    }
}
