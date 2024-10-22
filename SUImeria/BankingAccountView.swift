//
//  BankingAccountView.swift
//  SUImeria
//
//  Created by Gatien DIDRY on 22/10/2024.
//

import SwiftUI

struct BankingAccountView: View {

    private let title: String

    private let balanceIntegerPart: Int

    private let balanceFractionalPart: Int

    private let interestRate: Int?

    private let cornerRadius: CGFloat = 3

    private let hasCreditCardLinked: Bool

    private let hasBottomArrow: Bool

    @State private var geometryVar: GeometryProxy?

    init(
        _ title: String,
        balance: Double,
        interestRate: Int? = nil,
        hasCreditCardLinked: Bool = false,
        hasBottomArrow: Bool = false
    ) {
        self.title = title
        let (intergetPart, fractionalPart) = modf(balance)
        balanceIntegerPart = Int(intergetPart)
        balanceFractionalPart = Int(fractionalPart * 100)
        self.interestRate = interestRate
        self.hasCreditCardLinked = hasCreditCardLinked
        self.hasBottomArrow = hasBottomArrow
    }

    var body: some View {
        ZStack {
            HStack {
                VStack(alignment: .leading, spacing: 0) {
                    HStack {
                        Text(self.title)
                            .fontWeight(.heavy)
                            .padding([.trailing], 10)

                        if let interestRate {
                            HStack(spacing: 0.5) {
                                Image(systemName: "star.fill")
                                    .resizable()
                                    .frame(width: 10, height: 10)
                                    .foregroundStyle(.secondary)

                                Text("\(interestRate)%")
                                    .font(.subheadline)
                                    .fontWeight(.semibold)
                                    .foregroundStyle(.secondary)
                            }
                        }
                    }

                    HStack {
                        Text("\(self.balanceIntegerPart)")
                            .font(.title2)
                            .fontWeight(.regular)
                        + Text(",\(self.balanceFractionalPart)")
                    }
                }.padding(16)

                Spacer()

                Image(systemName: "creditcard.fill")
                    .resizable()
                    .frame(width: 25, height: 20)
                    .foregroundStyle(.secondary)
                    .padding([.trailing], 16)
                    .opacity(hasCreditCardLinked ? 1 : 0)
            } .background(Color(UIColor.systemBackground))
                .clipShape(RoundedRectangle(cornerRadius: cornerRadius))
                .background(GeometryReader(content: { geometry in
                    Color.clear
                        .onAppear {
                            geometryVar = geometry
                        }
                }))
                .padding(8)

        }
        .background(Color(UIColor.tertiarySystemGroupedBackground))
        .clipShape(RoundedRectangle(cornerRadius: cornerRadius))
        .padding([.bottom], 5)
        .overlay {
            if let geometryVar, hasBottomArrow {
                BubbleTailView()
                    .path(in: CGRect(x: 0, y: 0, width: geometryVar.size.width, height: geometryVar.size.height))
                    .fill(Color(UIColor.systemBackground))
            }
        }
        .padding([.horizontal], 16)
    }
}
