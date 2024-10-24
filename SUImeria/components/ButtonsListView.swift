//
//  ButtonsListView.swift
//  SUImeria
//
//  Created by Gatien DIDRY on 24/10/2024.
//

import SwiftUI

struct ButtonsListView: View {
    var body: some View {
        VStack {
        CustomButtonView(label: "Découvrir SUImeria +")

        CustomButtonView(label: "Aide et messages", notifNumber: 15)

        CustomButtonView(label: "Menu")
        }
        .padding([.horizontal], ViewService.padding)
    }
}
