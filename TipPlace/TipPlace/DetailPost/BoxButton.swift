//
//  BoxButton.swift
//  TipPlace
//
//  Created by 김수진 on 2022/04/12.
//

import SwiftUI

extension DetailPostView {
    struct BoxButtonLabel: ViewModifier {
        func body(content: Content) -> some View {
            content
                .font(.caption)
                .padding(5)
        }
    }

    struct BoxButtonStyle: ButtonStyle {
        @Binding var isButtonSelected: Bool

        func makeBody(configuration: Self.Configuration) -> some View {
            if isButtonSelected {
                return configuration.label
                    .modifier(BoxButtonLabel())
                    .foregroundColor(.mint)
                    .overlay(RoundedRectangle(cornerRadius: 5)
                        .stroke(.mint, lineWidth: 1))
            } else {
                return configuration.label
                    .modifier(BoxButtonLabel())
                    .foregroundColor(.gray)
                    .overlay(RoundedRectangle(cornerRadius: 5)
                        .stroke(.gray, lineWidth: 1))
            }
        }
    }
}
