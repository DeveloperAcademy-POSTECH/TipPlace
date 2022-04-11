//
//  ProfileImageView.swift
//  TipPlace
//
//  Created by SeungHwanKim on 2022/04/11.
//

import Foundation
import SwiftUI

struct ProfileImageView: View {
    let baseImageUrl = [
        "https://cdn.pixabay.com/photo/2017/02/08/17/24/fantasy-2049567_960_720.jpg",
        "https://cdn.pixabay.com/photo/2015/12/01/20/28/forest-1072828_960_720.jpg",
        "https://cdn.pixabay.com/photo/2016/08/11/23/48/mountains-1587287_960_720.jpg"
    ]
    // imageURL이 null 일 때 기본으로 들어가는 이미지

    var body: some View {
        AsyncImage(url: URL(string: baseImageUrl[Int.random(in: 0..<3)])) { image in
            image.resizable()
        } placeholder: {
            ProgressView()
        }
        .frame(width: 80, height: 80)
        .cornerRadius(40)
    }
    // 유저의 이미지 조건을 추가해야함. 목데이터 상황 봐서
}
