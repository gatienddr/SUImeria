//
//  BubbleTail.swift
//  SUImeria
//
//  Created by Gatien DIDRY on 22/10/2024.
//

import SwiftUI

struct BubbleTailView: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let firstPointX = rect.midX / 2 + rect.midX / 4
        let secondPointX = rect.midX + rect.midX / 4

        path.move(to: CGPoint(x: firstPointX, y: rect.height))  // Bottom left
        path.addLine(to: CGPoint(x: secondPointX, y: rect.height))  // Bottom right
        path.addLine(to: CGPoint(x: rect.midX, y: rect.height + 30))  // Top center
        path.closeSubpath()
        return path
    }
}
