//
//  PurchaseView.swift
//  SUImeria
//
//  Created by Gatien DIDRY on 23/10/2024.
//

import SwiftUI

struct PurchaseView: View {

    private let title: String

    private let cost: String

    init(title: String, cost: String) {
        self.title = title
        self.cost = cost
    }

    var body: some View {
            VStack(alignment: .leading) {
                Text(self.title)
                    .fontWeight(.bold)
                    .foregroundStyle(.white)

                Text(self.cost)
                    .fontWeight(.light)
                    .foregroundStyle(.white)
            }
        .padding([.vertical], ViewService.padding/2)
    }
}
