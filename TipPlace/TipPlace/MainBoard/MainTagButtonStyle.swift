//
//  MainTagButtonStyle.swift
//  TipPlace
//
//  Created by 리아 on 2022/04/13.
//

import SwiftUI

struct MainTagButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
            return configuration.label
                .font(.callout)
                .padding(.vertical, 6)
                .padding(.horizontal, 15)
                .foregroundColor(configuration.isPressed ? .white : .blue)
                .background(configuration.isPressed ? .blue : .clear)
                .clipShape(RoundedRectangle(cornerRadius: 10, style: .circular))
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.blue, lineWidth: 2)
                )
    }
}

struct MainTagButtonStyle_Previews: PreviewProvider {
    static var previews: some View {
        Button {
            print("button pressed")
        } label: {
            Text("Button")
        }
        .buttonStyle(MainTagButtonStyle())
    }
}
