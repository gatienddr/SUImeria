//
//  ContentView.swift
//  SUImeria
//
//  Created by Gatien DIDRY on 21/10/2024.
//

import SwiftUI

struct ContentView: View {

    let padding: CGFloat = 16

    @State private var scrollPosition: CGPoint = .zero

    var body: some View {
        ScrollView {
            VStack {
                BankAccountsView(scrollPosition: $scrollPosition)

                RealWalletView()
                    .id("wallet")

                PurchasesView()

                RenumerationView()

                PremiumOfferView()

                ButtonsListView()
                    .padding([.bottom], 100)

            }
            .background(GeometryReader { geometry in
                Color.clear
                    .preference(key: ScrollOffsetPreferenceKey.self, value: geometry.frame(in: .named("scroll")).origin)
            })
        }

        .onPreferenceChange(ScrollOffsetPreferenceKey.self) { value in
            self.scrollPosition = value
        }
        .coordinateSpace(name: "scroll")
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.backgroundGreen)
        .overlay(alignment: .bottomTrailing) {
            RoundedButtonView()
                .offset(x: -ViewService.padding, y: -ViewService.padding)
        }
    }
}

struct ScrollOffsetPreferenceKey: PreferenceKey {
    static var defaultValue: CGPoint = .zero
    static func reduce(value: inout CGPoint, nextValue: () -> CGPoint) {
    }
}
