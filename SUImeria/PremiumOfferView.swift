//
//  PremiumOfferView.swift
//  SUImeria
//
//  Created by Gatien DIDRY on 24/10/2024.
//

import SwiftUI

struct PremiumOfferView: View {
    var body: some View {
        ZStack {
            Image("iphone_apple_table")
                .resizable()
                .scaledToFill()
                .frame(height: 170)
                .clipShape(RoundedRectangle(cornerSize: CGSize(width: 10, height: 10)))

            VStack(alignment: .leading) {
                Spacer()

                Text("Découvrer SUImerai +")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundStyle(.white)

                HStack {
                    Text("Pour mettre de coté en toute simplicité")
                        .foregroundStyle(.white)

                    Spacer()

                    Image(systemName: "arrow.forward")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .foregroundStyle(.white)
                }
                .padding([.bottom], ViewService.padding)
            }
            .padding([.horizontal], ViewService.padding)

        }
        .overlay(alignment: .topTrailing) {
            Image(systemName: "xmark")
                .foregroundStyle(.white)
                .padding([.trailing, .top], ViewService.padding)
        }

        .padding(ViewService.padding)
    }
}
