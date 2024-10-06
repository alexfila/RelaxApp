//
//  ImageIN.swift
//  RelaxApp
//
//  Created by Alex Fila on 02/10/24.
//

import SwiftUI

struct ImageIN: View {
    @State private var image1scale: CGFloat = 1
    @State private var isOn = true
    var body: some View {
        Image("breathIN")
            .resizable()
            .frame(width: 300, height: 300)
                .frame(width: 20)
                .scaleEffect(isOn ? 1.1 * image1scale : image1scale)
                .animation(.easeInOut(duration: 2.0).repeatForever(), value: isOn)
                .onAppear {
                    isOn.toggle()
                }
        
    }
}

struct ImageOUT: View {
    @State private var image2scale: CGFloat = 1
    @State private var isOn = true
    var body: some View {
        Image("breathOUT")
            .resizable()
            .frame(width: 300, height: 300)
                .frame(width: 20)
                .scaleEffect(isOn ? 1.1 * image2scale : image2scale)
                .animation(.easeInOut(duration: 2.0).repeatForever(), value: isOn)
                .onAppear {
                    isOn.toggle()
                }
    }
}

#Preview { ImageIN().preferredColorScheme(.dark)
    ImageOUT().preferredColorScheme(.dark) }
