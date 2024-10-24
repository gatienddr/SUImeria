//
//  PurchasesView.swift
//  SUImeria
//
//  Created by Gatien DIDRY on 23/10/2024.
//

import SwiftUI
struct PurchasesView: View {

    @State var paymentHistorySearchValue = ""

    var body: some View {
        CustomPanelView {
            HStack {
                Image(systemName: "magnifyingglass")
                    .resizable()
                    .frame(width: 20, height: 20)
                    .foregroundStyle(.white)

                TextField(
                    "",
                    text: $paymentHistorySearchValue,
                    prompt: Text("Paiement passés")
                        .fontWeight(.semibold)
                        .foregroundStyle(.white)
                )
                .foregroundColor(.white)

            }
            .padding([.horizontal, .top], ViewService.padding)

            Divider()
                .overlay(.white)
                .padding([.horizontal], ViewService.padding)

            VStack(alignment: .leading) {
                PurchaseView(
                    title: "Microsoft",
                    cost: "- 6,99"
                )

                PurchaseView(
                    title: "Open AI",
                    cost: "- 10.85"
                )

                PurchaseView(
                    title: "Uber",
                    cost: "- 5,99"
                )
            }
            .padding([.leading], ViewService.padding)
            .padding([.bottom], ViewService.padding / 2)
        }
        .padding([.horizontal], ViewService.padding)
        .padding([.vertical], ViewService.padding * 2)
    }
}
