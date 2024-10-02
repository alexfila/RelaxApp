//
//  BreathView.swift
//  RelaxApp
//
//  Created by Alex Fila on 02/10/24.
//

import SwiftUI

struct BreathView: View {
    let skyBlue = Color(#colorLiteral(red: 0.2901960784, green: 0.8392156863, blue: 1, alpha: 1))
    let electricPurple = Color(#colorLiteral(red: 0.8470588235, green: 0.5137254902, blue: 1, alpha: 1))
    var body: some View {
        VStack {
            Rectangle()
                .stroke(lineWidth: 15)
                .cornerRadius(4.0)
                .frame(width: 350, height: 350)
                .foregroundStyle(skyBlue.gradient)
                .overlay(ImageIN())
                .overlay(Rectangle().foregroundStyle(electricPurple.gradient).frame(width: 7, height: 340, alignment: .center).offset(x: 171, y: 0).opacity(0.65))
            Pointer()
                .offset(x: 170, y: -25)
            Pointer()
                .offset(x: 170, y: -390)
                .opacity(0.2)
            Text("Breath in")
                .offset(x: 70, y: -295)
                .font(.title)
            Text("")
            
        }
        .padding()
    }
}

#Preview {
    BreathView()
}
