//
//  CustomButtonView.swift
//  SUImeria
//
//  Created by Gatien DIDRY on 24/10/2024.
//

import SwiftUI

struct CustomButtonView: View {

    private var label: String

    private var notifNumber: Int?

    init(
        label: String,
        notifNumber: Int? = nil
    ) {
        self.label = label
        self.notifNumber = notifNumber
    }

    var body: some View {
        Button {}
        label: {
            HStack {
                Text(label)
                    .bold()
                    .foregroundStyle(.white)
                    .padding(ViewService.padding)
            }
            .frame(maxWidth: .infinity)
            .background(.white.opacity(0.1))
            .clipShape(RoundedRectangle(cornerSize: CGSize(width: 10, height: 10)))
            .overlay(
                alignment: .topTrailing,
                     content: {
                if let notifNumber {
                    ZStack {
                        Circle()
                            .fill(.white)
                            .frame(width: 22)

                        Text("\(notifNumber)")
                            .fontWeight(.heavy)
                            .font(.system(size: 12))
                            .foregroundStyle(.black)
                    }
                    .offset(x: 7, y: -7)
                }
            })
        }
    }
}
