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
                        ButtonView(title: "관심 카테고리 설정")
                        ButtonView(title: "관심 태그 설정")
                        ButtonView(title: "전문 분야 설정")
                    }
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 40, trailing: 0))
                    VStack {
                        ButtonView(title: "내 꿀팁 글/댓글")
                        ButtonView(title: "저장된 꿀팁")
                        ButtonView(title: "전문가 모아보기")
                    }
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 40, trailing: 0))
                    VStack {
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
                    .foregroundColor(.black )
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
            .padding(EdgeInsets(top: 0, leading: 0, bottom: 20, trailing: 10))
            VStack(alignment: .leading, spacing: 7) {
                Text("내일은 요리왕")
                    .font(.system(size: 20))
                Text("mijinc@icloud.com")
                .font(.system(size: 10))
                .accentColor(.black)
                HStack {
                    Text("자취")
                    .font(.system(size: 10))
                    .foregroundColor(.green)
                    Text("|")
                    .font(.system(size: 10))
                    .foregroundColor(.black)
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

extension UIImageView {
    func load(url: URL) {
        DispatchQueue.global().async { [weak self] in
            if let data = try? Data(contentsOf: url) {
                if let image = UIImage(data: data) {
                    DispatchQueue.main.async {
                        self?.image = image
                    }
                }
            }
        }
    }
}

struct ButtonView: View {
    let title: String
    var body: some View {
        Button {
            print("버튼 눌림")
        } label: {
            HStack {
                Text(title)
                    .font(.system(size: 18))
                Spacer()
                Image(systemName: "chevron.forward")
                    .foregroundColor(Color.gray)
            }
            .padding(EdgeInsets(top: 8, leading: 20, bottom: 0, trailing: 20))
        }
        .foregroundColor(Color.black)
        Divider()
            .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20))
    }
}

struct MyPageView_Previews: PreviewProvider {
    static var previews: some View {
        MyPageView()
    }
}
