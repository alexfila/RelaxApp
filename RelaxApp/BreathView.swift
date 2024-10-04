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
        ZStack {
            Rectangle()
                .stroke(lineWidth: 15)
                .cornerRadius(4.0)
                .frame(width: 350, height: 350)
                .foregroundStyle(skyBlue.gradient)
            ImageIN()
            Rectangle().foregroundStyle(electricPurple.gradient).frame(width: 7, height: 340, alignment: .center).offset(x: 171, y: 0).opacity(0.65)
            PointerView()
                .offset(point[0])
            PointerView()
                .offset(point[1])
                .opacity(0.2)
            Text("Breath in")
                .offset(x: 70, y: -70)
                .font(.title)
        }
        .padding()
    }
}

var point : [CGSize] = [
    CGSize(width: 170 , height: 170),
    CGSize(width: 170 , height: -170),
    CGSize(width: 170 , height: 170),
    CGSize(width: 170 , height: 170)]
            
#Preview {
    BreathView()
}
