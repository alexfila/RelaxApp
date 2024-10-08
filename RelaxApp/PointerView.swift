//
//  PointerView.swift
//  RelaxApp
//
//  Created by Alex Fila on 02/10/24.
//

import SwiftUI

struct PointerView: View {
    @State private var circlescale: CGFloat = 1
    @State private var isOn = true
    var color = Color(#colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1))
    var body: some View {
        ZStack {
            Circle()
                .foregroundStyle(color.gradient)
                .opacity(0.5)
                .frame(width: 40)
                .scaleEffect(isOn ? 1.5 * circlescale : circlescale)
                .animation(.easeInOut(duration: 1.5).repeatForever(), value: isOn)
                .onAppear {
                    isOn.toggle()
                }
            Circle()
                .foregroundStyle(color.gradient)
                .opacity(0.5)
                .frame(width: 40)
                .scaleEffect(isOn ? 1.5 * circlescale : circlescale)
                .animation(.easeInOut(duration: 2).repeatForever(), value: isOn)
                .onAppear {
                    isOn.toggle()
                }
            Circle()
                .foregroundStyle(color.gradient)
                .frame(width: 40)
                .onAppear {
                    isOn.toggle()
                }
        }
    }
}

#Preview { PointerView().preferredColorScheme(.dark) }
