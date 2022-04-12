//
//  SettingsView.swift
//  TipPlace
//
//  Created by SeungHwanKim on 2022/04/12.
//

import SwiftUI

struct SettingsView: View {
    @State private var showingAlert = false
    var body: some View {
        ScrollView {
            VStack {
                ProfileImageChangeView()
                VStack(alignment: .leading, spacing: 6) {
                    Text("사용자 정보")
                        .padding(.bottom, 20)
                    InfoRowView(title: "이름", content: "고현수")
                    EditInfoRowView(title: "사용자 이름", content: "내일은요리왕")
                    InfoRowView(title: "이메일", content: "asdasd@icloud.com")
                }
                .padding(EdgeInsets(top: 30, leading: 20, bottom: 0, trailing: 0))
                VStack(alignment: .leading, spacing: 6) {
                    Text("계정 정보")
                        .padding(.bottom, 20)
                    InfoRowView(title: "아이디", content: "happyhsk")
                    EditInfoRowView(title: "비밀번호", content: "*******")
                }
                .padding(EdgeInsets(top: 30, leading: 20, bottom: 0, trailing: 0))
                Button {
                } label: {
                    Text("로그아웃")
                        .foregroundColor(.green)
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
            }
        }
        .navigationTitle("내 설정")
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            Button {
                showingAlert = true
            } label: {
                HStack {
                    Text("저장")
                }
                .alert(isPresented: $showingAlert) {
                    Alert(title: Text("저장이 완료되었습니다."),
                          dismissButton: .default(Text("Close")))
                }
            }
            .foregroundColor(.green)
        }
    }
}

struct ProfileImageChangeView: View {
    var body: some View {
        VStack {
            ProfileImageView()
                .padding(EdgeInsets(top: 40, leading: 0, bottom: 10, trailing: 0))
            Button { // 이미지 수정하는 API 오는 곳
            } label: {
                Text("사진 수정")
                    .font(.system(size: 15))
            }
            .accentColor(.green)
        }
    }
}

struct InfoRowView: View {
    var title: String
    var content: String
    var body: some View {
        VStack {
            HStack {
                Text(title)
                    .font(.system(size: 17))
                    .frame(width: 84, height: 22, alignment: .leading)
                Text(content)
                    .font(.system(size: 17))
                    .frame(width: 259, height: 22, alignment: .leading)
            }
            .padding(.top, 5)
            Divider()
            
        }
        .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 20))
    }
}

struct EditInfoRowView: View {
    var title: String
    var content: String
    var body: some View {
        VStack {
            HStack {
                Text(title)
                    .font(.system(size: 17))
                    .frame(width: 84, height: 22, alignment: .leading)
                Text(content)
                    .font(.system(size: 17))
                    .frame(width: 220, height: 22, alignment: .leading)
                Button {
                } label: {
                    Text("변경")
                }
                .accentColor(.green)
                .frame(width: 30, height: 22, alignment: .leading)
            }
            .padding(.top, 5)
            Divider()
        }
        .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 20))
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
