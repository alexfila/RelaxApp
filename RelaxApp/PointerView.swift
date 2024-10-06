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
    let electricPurple = Color(#colorLiteral(red: 0.8470588235, green: 0.5137254902, blue: 1, alpha: 1))
    var body: some View {
        ZStack {
            Circle()
                .foregroundStyle(electricPurple.gradient)
                .opacity(0.5)
                .frame(width: 20)
                .scaleEffect(isOn ? 1.5 * circlescale : circlescale)
                .animation(.easeInOut(duration: 1.5).repeatForever(), value: isOn)
                .onAppear {
                    isOn.toggle()
                }
            Circle()
                .foregroundStyle(electricPurple.gradient)
                .opacity(0.5)
                .frame(width: 20)
                .scaleEffect(isOn ? 1.5 * circlescale : circlescale)
                .animation(.easeInOut(duration: 2).repeatForever(), value: isOn)
                .onAppear {
                    isOn.toggle()
                }
            Circle()
                .foregroundStyle(electricPurple.gradient)
                .frame(width: 20)
                .onAppear {
                    isOn.toggle()
                }
        }
    }
}

#Preview { PointerView().preferredColorScheme(.dark) }
