//
//  BankinAccountsView.swift
//  SUImeria
//
//  Created by Gatien DIDRY on 25/10/2024.
//

import SwiftUI

struct BankAccountsView: View {
    @Binding var scrollPosition: CGPoint

    func getScaleEffectValue() -> Double {
        if scrollPosition.y > 0 {
            return 1.0
        }
        let scaleEffectValue = 1 - (-scrollPosition.y * 0.001)
        return scaleEffectValue > 0.4 ? scaleEffectValue : 0.4
    }

    func getSecondScaleEffectValue() -> Double {
        let scaleComputedEffect = getScaleEffectValue() * 1.05
        return scaleComputedEffect > 1 ? 1 : scaleComputedEffect
    }

    func getOffset() -> Double {
        if scrollPosition.y > 1 {
            return 0
        }
        let offset = -scrollPosition.y * 0.8
        return offset
    }

    func getOpacity() -> Double {
        return 1 - (-scrollPosition.y * 0.005)
    }

    var body: some View {
        VStack {
            BankAccountView("Actions, cryptos, métaux", balance: 12.24)
                .offset(CGSize(width: 0, height: getOffset() * 2))
                .scaleEffect(
                    CGSize(width: getScaleEffectValue(),
                           height: getScaleEffectValue()))
                .opacity(getOpacity() * 0.7)

            BankAccountView("Compte Lydia", balance: 4.33, interestRate: 2)
                .offset(CGSize(width: 0, height: getOffset() * 0.9))
                .scaleEffect(
                    CGSize(width: getSecondScaleEffectValue(),

                           height: getSecondScaleEffectValue()))
                .opacity(getOpacity() * 1.3)

            BankAccountView(
                "Perso",
                balance: 64.98,
                interestRate: 2,
                hasCreditCardLinked: true,
                hasBottomArrow: true
            )
        }
    }
}
