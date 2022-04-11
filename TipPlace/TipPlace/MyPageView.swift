//
//  MyPageView.swift
//  MC1_Team16_UNsIX_App
//
//  Created by 김수진 on 2022/04/05.
//

import SwiftUI

struct MyPageView: View {
    var body: some View {
        HStack {
            NavigationView {
                ScrollView {
                    VStack {
                        ProfileView()
                        DividerView()
                        ButtonView(title: "관심 카테고리 설정")
                        ButtonView(title: "관심 태그 설정")
                        ButtonView(title: "전문 분야 설정")
                    }
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 30, trailing: 0))
                    VStack {
                        DividerView()
                        ButtonView(title: "내 꿀팁 글/댓글")
                        ButtonView(title: "저장된 꿀팁")
                        ButtonView(title: "전문가 모아보기")
                    }
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 30, trailing: 0))
                    VStack {
                        DividerView()
                        ButtonView(title: "내 설정")
                        ButtonView(title: "커뮤니티 가이드라인")
                    }
                }
                .navigationTitle("마이페이지")
                .toolbar {
                    Button {
                        print("tapped")
                    } label: {
                        Image(systemName: "gearshape")
                    }
                    .foregroundColor(.green)
                }
            }
        }
    }
}

struct ProfileView: View {
//    let userNmae
//    let userSpecialty
    var body: some View {
        HStack {
            ZStack {
                Circle()
                    .foregroundColor(Color.gray)
                    .frame(width: 90, height: 90)
                Circle()
                    .foregroundColor(Color.white)
                    .frame(width: 80, height: 80)
                ProfileImageView()
            }
            .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 10))
            VStack(alignment: .leading, spacing: 7) {
                Text("내일은 요리왕")
                    .font(.system(size: 20))
                Text("mijinc@icloud.com")
                .font(.system(size: 10))
                .accentColor(.black)
                HStack {
                    Text("자취")
                        .font(.system(size: 10, weight: .heavy))
                    .foregroundColor(.green)
                    Divider()
                        .background(Color.black)
                        .padding(EdgeInsets(top: 10, leading: 0, bottom: 10, trailing: 0))
                    Text("#자취")
                    .font(.system(size: 10))
                    .foregroundColor(.black)
                    Text("#자취")
                    .font(.system(size: 10))
                    .foregroundColor(.black)
                    Text("#자취")
                    .font(.system(size: 10))
                    .foregroundColor(.black)
                }
            }
        }
        .padding(EdgeInsets(top: 30, leading: 0, bottom: 30, trailing: 100))
    }
}

struct ButtonView: View {
    let title: String
//    func childrenViewSelector() {
//        let _: String = title
//        if (title == "전문가 모아보기") {
//            ExpertCollectionView()
//        }
//    }
    var body: some View {
        Button {
//            ExpertCollectionView()
            //버튼에 딸린 뷰를 추가하는 작업중입니다.
            print("버튼 눌림")
        } label: {
            HStack {
                Text(title)
                    .font(.system(size: 16))
                Spacer()
                Image(systemName: "chevron.forward")
                    .foregroundColor(Color.gray)
            }
            .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20))
        }
        .foregroundColor(Color.black)
        DividerView()
    }
}

struct DividerView: View {
    var body: some View {
        Divider()
            .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20))
    }
}

struct MyPageView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            MyPageView()
            ExpertCollectionView()
        }
    }
}
