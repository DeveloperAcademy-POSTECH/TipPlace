//
//  BoxButton.swift
//  TipPlace
//
//  Created by 김수진 on 2022/04/12.
//

import SwiftUI

extension DetailPostView {
    struct BoxButtonStyle: ButtonStyle {
        @Binding var isButtonSelected: Bool

        func makeBody(configuration: Self.Configuration) -> some View {
            if isButtonSelected {
                return configuration.label
                    .font(.caption)
                    .padding(5)
                    .foregroundColor(.mint)
                    .overlay(RoundedRectangle(cornerRadius: 5)
                    .stroke(.mint, lineWidth: 1))
            } else {
                return configuration.label
                    .font(.caption)
                    .padding(5)
                    .foregroundColor(.gray)
                    .overlay(RoundedRectangle(cornerRadius: 5)
                        .stroke(.gray, lineWidth: 1))
            }
        }
    }
}
