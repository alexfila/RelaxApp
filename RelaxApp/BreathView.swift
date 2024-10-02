//
//  BreathView.swift
//  RelaxApp
//
//  Created by Alex Fila on 02/10/24.
//

import SwiftUI

struct BreathView: View {
    let skyBlue = Color(#colorLiteral(red: 0.2901960784, green: 0.8392156863, blue: 1, alpha: 1))
    var body: some View {
        VStack {
            Rectangle()
                .stroke(lineWidth: 15)
                .cornerRadius(4.0)
                .frame(width: 350, height: 350)
                .foregroundStyle(skyBlue.gradient)
                .overlay(Image("breathIN")
                    .resizable()
                    .frame(width: 340, height: 340))
            Pointer()
                .offset(x: 170, y: -25)
            Text("Breath in")
                .offset(x: 70, y: -295)
                .font(.title)
        }
        .padding()
    }
}

#Preview {
    BreathView()
}
