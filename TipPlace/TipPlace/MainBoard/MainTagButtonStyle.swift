//
//  MainTagButtonStyle.swift
//  TipPlace
//
//  Created by 리아 on 2022/04/13.
//

import SwiftUI

struct MainTagButtonStyle: ButtonStyle {
    @Binding var isButtonSelected: Bool
    func makeBody(configuration: Configuration) -> some View {
        if (isButtonSelected) {
            return configuration.label
                .font(.callout)
                .padding(.vertical, 6)
                .padding(.horizontal, 15)
                .foregroundColor(.white)
                .background(.blue)
                .clipShape(RoundedRectangle(cornerRadius: 10, style: .circular))
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.blue, lineWidth: 2)
                )
        } else {
            return configuration.label
                .font(.callout)
                .padding(.vertical, 6)
                .padding(.horizontal, 15)
                .foregroundColor(.blue)
                .background(.clear)
                .clipShape(RoundedRectangle(cornerRadius: 10, style: .circular))
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.blue, lineWidth: 2)
                )
        }
    }
    
}

struct MainTagButtonStyle_Previews: PreviewProvider {
    static var previews: some View {
        Button {
            print("d")
        } label: {
            Text("d")
        }
        .buttonStyle(MainTagButtonStyle(isButtonSelected: .constant(true)))
    }
}
