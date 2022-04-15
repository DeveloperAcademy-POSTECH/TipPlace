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
            Text("관심 카테고리 설정")
                .navigationTitle("관심 카테고리 설정")
                .navigationBarTitleDisplayMode(.inline)
        }
        if title == "관심 태그 설정" {
            Text("관심 태그 설정")
                .navigationTitle("관심 태그 설정")
                .navigationBarTitleDisplayMode(.inline)
        }
        if title == "전문 분야 설정" {
            Text("전문 분야 설정")
                .navigationTitle("전문 분야 설정")
                .navigationBarTitleDisplayMode(.inline)
        }
        if title == "내 꿀팁 글/댓글" {
            Text("내 꿀팁 글/댓글")
                .navigationTitle("내 꿀팁 글/댓글")
                .navigationBarTitleDisplayMode(.inline)
        }
        if title == "저장된 꿀팁" {
            Text("저장된 꿀팁")
                .navigationTitle("저장된 꿀팁")
                .navigationBarTitleDisplayMode(.inline)
        }
        if title == "전문가 모아보기" {
            ExpertCollectionView()
        }
        if title == "내 설정" {
            SettingsView()
        }
        if title == "커뮤니티 가이드라인" {
            Text("커뮤니티 가이드라인")
                .navigationTitle("커뮤니티 가이드라인")
                .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct MyPageChildrenViewList_Previews: PreviewProvider {
    static var previews: some View {
        MyPageChildrenViewList(title: "Example")
    }
}
