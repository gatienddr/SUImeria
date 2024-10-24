//
//  RenumerationView.swift
//  SUImeria
//
//  Created by Gatien DIDRY on 24/10/2024.
//

import SwiftUI

struct RenumerationView: View {

    @State private var renumerationNumberViewSize: CGSize?

    var body: some View {
        CustomPanelView {
            VStack(alignment: .leading) {
                Text("Rémunération 2 %")
                    .fontWeight(.bold)
                    .foregroundStyle(.white)

                Text("Encore 9 paiements pour la débloquer")
                    .font(.system(size: 16))
                    .fontWeight(.semibold)
                    .foregroundStyle(.white)

                ZStack(alignment: .leading) {

                    //to set the exacte natural size
                    RemunerationNumberView()
                        .padding([.vertical], 16)
                        .opacity(0)

                    Canvas { context, size in

                        let topMaskrect = Path { path in
                            path.addRect(
                                CGRect(
                                    x: 0,
                                    y: 0,
                                    width: renumerationNumberViewSize?.width ?? 0,
                                    height: renumerationNumberViewSize?.height ?? 0)
                            )

                        }

                        let bottomMaskRect = Path { path in
                            path.addRect(
                                CGRect(
                                    x: 0,
                                    y: size.height * 0.5,
                                    width: renumerationNumberViewSize?.width ?? 0,
                                    height: renumerationNumberViewSize?.height ?? 0)
                            )
                        }

                        if let remuneration = context.resolveSymbol(id: 1),
                           let renumerationLessOpacity = context.resolveSymbol(id: 2) {

                            context.draw(
                                renumerationLessOpacity,
                                at: CGPoint(x: size.width * 0.5, y: size.height * -0.1 )
                            )

                            context.draw(
                                remuneration,
                                at: CGPoint(x: size.width * 0.5, y: size.height*0.5)
                            )

                            context.draw(
                                renumerationLessOpacity,
                                at: CGPoint(x: size.width * 0.5, y: size.height * 1.1)
                            )
                        }

                        context.fill(
                            topMaskrect,
                            with: .linearGradient(
                                Gradient(
                                    colors: [
                                        .backgroundGreen.opacity(0.45),
                                        .clear.opacity(0.3)
                                    ]),
                                startPoint: CGPoint(x: 0.5, y: 0),
                                endPoint: CGPoint(x: 0.5, y: size.height*0.25)
                            )
                        )

                        context.fill(
                            bottomMaskRect,
                            with: .linearGradient(
                                Gradient(
                                    colors: [
                                        .clear.opacity(0.3),
                                        .backgroundGreen.opacity(0.5),
                                        .black.opacity(0.6)
                                    ]),
                                startPoint: CGPoint(x: 0.5, y: size.height * 0.5),
                                endPoint: CGPoint(x: 0.5, y: size.height * 1.5)
                            )
                        )

                    } symbols: {
                        HStack {
                            RemunerationNumberView()
                                .background(GeometryReader(content: { geometry in
                                    Color.clear
                                        .onAppear {
                                            self.renumerationNumberViewSize = geometry.size
                                        }
                                }))
                            Spacer()
                        }
                        .tag(1)

                        HStack {
                            RemunerationNumberView()
                                .opacity(0.2)
                            Spacer()
                        }
                        .tag(2)
                    }
                }

                Text("CUMULÉE ET ESTIMÉE DU 1ER AU 20/10 19h07*")
                    .font(.system(size: 8))
                    .foregroundStyle(.white)
            }
            .padding([.leading, .top], ViewService.padding)
            HStack {
                Spacer()
            }
        }
        .padding([.horizontal], ViewService.padding)
    }
}
