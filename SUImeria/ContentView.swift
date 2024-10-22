//
//  ContentView.swift
//  SUImeria
//
//  Created by Gatien DIDRY on 21/10/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            BankingAccountView("Actions, cryptos, métaux", balance: 12.24)

            BankingAccountView("Compte Lydia", balance: 4.33, interestRate: 2)

            BankingAccountView(
                "Perso",
                balance: 64.98,
                interestRate: 2,
                hasCreditCardLinked: true,
                hasBottomArrow: true
            )
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.backgroundGreen)
    }
}
