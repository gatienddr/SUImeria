//
//  ContentView.swift
//  SUImeria
//
//  Created by Gatien DIDRY on 21/10/2024.
//

import SwiftUI

struct ContentView: View {

    let padding: CGFloat = 16

    @State private var scrollPositionValue: CGPoint = .zero

    @State private var position = ScrollPosition(edge: .top)

    var body: some View {

        ScrollView {
            VStack {
                BankAccountsView(scrollPosition: $scrollPositionValue)

                RealWalletView()

                PurchasesView()

                RenumerationView()

                PremiumOfferView()

                ButtonsListView()
                    .padding([.bottom], 100)
            }
            .onAppear(perform: {
                position.scrollTo(id: "renumeration")
            })
            .background(GeometryReader { geometry in
                Color.clear
                    .preference(key: ScrollOffsetPreferenceKey.self, value: geometry.frame(in: .named("scroll")).origin)
            })
        }
        .scrollPosition($position)
        .onPreferenceChange(ScrollOffsetPreferenceKey.self) { value in
            self.scrollPositionValue = value
        }
        .coordinateSpace(name: "scroll")
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.backgroundGreen)
        .overlay(alignment: .bottomTrailing) {
            RoundedButtonView()
                .offset(x: -ViewService.padding, y: -ViewService.padding)
        }
        .ignoresSafeArea(.container, edges: .top)
    }
}

struct ScrollOffsetPreferenceKey: PreferenceKey {
    static var defaultValue: CGPoint = .zero
    static func reduce(value: inout CGPoint, nextValue: () -> CGPoint) {
    }
}
