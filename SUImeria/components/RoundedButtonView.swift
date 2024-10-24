//
//  RoundedButtonView.swift
//  SUImeria
//
//  Created by Gatien DIDRY on 24/10/2024.
//

import SwiftUI

struct RoundedButtonView: View {
    var body: some View {
        Button(action: {}) {
            ZStack {
                Circle()
                    .fill(.white.opacity(0.1))
                    .frame(width: 80)

                Circle()
                    .fill(.white)
                    .frame(width: 70)

                Image(systemName: "arrow.left.arrow.right")
                    .fontWeight(.bold)
                    .frame(width: 70)
                    .foregroundStyle(.black)
            }
        }
    }
}
