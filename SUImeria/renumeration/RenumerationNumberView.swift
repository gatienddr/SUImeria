//
//  RenumerationNumberView.swift
//  SUImeria
//
//  Created by Gatien DIDRY on 24/10/2024.
//

import SwiftUI

struct RemunerationNumberView: View {
    var body: some View {
        HStack(spacing: 5) {
            SquareNumberView("0", isDisable: true)

            SquareNumberView("0", isDisable: true)

            SquareNumberView("0", isDisable: true)

            SquareNumberView("0")

            SquareNumberView("0")

            SquareNumberView(",")

            SquareNumberView("0")

            SquareNumberView("4")
        }
    }
}
