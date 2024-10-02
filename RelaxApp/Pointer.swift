//
//  Pointer.swift
//  RelaxApp
//
//  Created by Alex Fila on 02/10/24.
//

import SwiftUI

struct Pointer: View {
    @State private var circlescale: CGFloat = 1
    @State private var isOn = true
    var body: some View {
        ZStack {
            Circle()
                .foregroundColor(.blue)
                .opacity(0.5)
                .frame(width: 20)
                .scaleEffect(isOn ? 1.5 * circlescale : circlescale)
                .animation(.easeInOut(duration: 1.5).repeatForever(), value: isOn)
                .onAppear {
                    isOn.toggle()
                }
            Circle()
                .foregroundColor(.blue)
                .opacity(0.5)
                .frame(width: 20)
                .scaleEffect(isOn ? 1.5 * circlescale : circlescale)
                .animation(.easeInOut(duration: 2).repeatForever(), value: isOn)
                .onAppear {
                    isOn.toggle()
                }
            Circle()
                .foregroundColor(.blue)
                .frame(width: 20)
                .onAppear {
                    isOn.toggle()
                }
        }
    }
}

#Preview {
    Pointer()
        .preferredColorScheme(.dark)
}
