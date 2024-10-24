//
//  ContentView.swift
//  SUImeria
//
//  Created by Gatien DIDRY on 21/10/2024.
//

import SwiftUI

struct ContentView: View {

    let padding: CGFloat = 16

    var body: some View {

        ScrollView {
            BankingAccountView("Actions, cryptos, métaux", balance: 12.24)

            BankingAccountView("Compte Lydia", balance: 4.33, interestRate: 2)

            BankingAccountView(
                "Perso",
                balance: 64.98,
                interestRate: 2,
                hasCreditCardLinked: true,
                hasBottomArrow: true
            )
            .padding([.bottom], padding
            )

            RealWalletView()

            PurchasesView()

            RenumerationView()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.backgroundGreen)
    }
}
