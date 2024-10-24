//
//  RealWalletView.swift
//  SUImeria
//
//  Created by Gatien DIDRY on 22/10/2024.
//

import SwiftUI

struct RealWalletView: View {
    var body: some View {
        Image("real_wallet")
            .resizable()
            .frame(height: 250)
            .clipShape(RoundedRectangle(cornerSize: CGSize(width: 15, height: 15)))
            .padding([.horizontal], ViewService.padding)
            .overlay(alignment: .topLeading) {
                Text("sUImeria")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding([.leading], ViewService.padding * 2)
                    .padding([.top], ViewService.padding)
            }
            .overlay(alignment: .bottomTrailing) {
                Text("G.D")
                    .font(.largeTitle)
                    .fontWeight(.light)
                    .padding([.trailing], ViewService.padding * 2)
                    .padding([.bottom], ViewService.padding)
            }
            .shadow(color: Color(white: 1.0, opacity: 0.3), radius: 10)
    }
}
