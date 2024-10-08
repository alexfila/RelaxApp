//
//  BreathView.swift
//  RelaxApp
//
//  Created by Alex Fila on 02/10/24.
//

import SwiftUI

struct EarthView: View {
    let skyBlue = Color(#colorLiteral(red: 0.2901960784, green: 0.8392156863, blue: 1, alpha: 1))
    let electricPurple = Color(#colorLiteral(red: 0.8470588235, green: 0.5137254902, blue: 1, alpha: 1))
    var body: some View {
        HStack {
            Button("▶️") {
            }
            .font(.title)
            .buttonStyle(.borderedProminent)
            ZStack {
                Image(systemName: "mountain.2")
                    .resizable()
                    .padding()
                    .opacity(0.6)
                    .offset(x: 85, y: 10)
                PointerView()
                    .offset(point[0])
            }
            .padding()
        }
        .padding()
    }
}

var point : [CGSize] = [
    CGSize(width: -32 , height: 140),
    CGSize(width: 170 , height: -170),
    CGSize(width: 170 , height: 170),
    CGSize(width: 170 , height: 170)]
            
#Preview { EarthView() }
