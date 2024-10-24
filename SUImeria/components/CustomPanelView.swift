//
//  CustomPanelView.swift
//  SUImeria
//
//  Created by Gatien DIDRY on 23/10/2024.
//

import SwiftUI

struct CustomPanelView<Content: View>: View {

    @ViewBuilder let content: Content

    var body: some View {
        VStack(alignment: .leading) {
            content
        }
        .background(Color.white.opacity(0.1))
        .overlay(content: {
            RoundedRectangle(cornerRadius: 8)
                .stroke(Color.gray, lineWidth: 0.25)
        })
    }
}
