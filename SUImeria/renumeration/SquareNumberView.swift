//
//  SquareNumberView.swift
//  SUImeria
//
//  Created by Gatien DIDRY on 24/10/2024.
//

import SwiftUI

struct SquareNumberView: View {
    private let char: Character

    private let isDisable: Bool

    init(_ char: Character, isDisable: Bool = false) {
        self.char = char
        self.isDisable = isDisable
    }

    var body: some View {
        ZStack {
            Text("\(char)")
                .font(.system(size: 20))
                .fontWeight(.heavy)
                .foregroundStyle(isDisable ? .white.opacity(0.50) : .turquoiseGreen)
                .padding([.horizontal], ViewService.padding / 2.5)
                .padding([.vertical], ViewService.padding / 3)
        }
        .background(isDisable ? .white.opacity(0.25) :  .white)
        .clipShape(RoundedRectangle(cornerSize: CGSize(width: 5, height: 5)))
    }
}
