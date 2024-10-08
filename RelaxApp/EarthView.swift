//
//  BreathView.swift
//  RelaxApp
//
//  Created by Alex Fila on 02/10/24.
//

import SwiftUI

struct EarthView: View {
    @State private var isOn = true
    
    var body: some View {
        ZStack {
            PointerView(color: Color(#colorLiteral(red: 0.5058823824, green: 0.3372549117, blue: 0.06666667014, alpha: 1)))
            Text("Relax, get ready....")
                .frame(maxWidth: .infinity,maxHeight: .infinity,alignment: .bottom)
                .font(.largeTitle)
        }
    }
}

var point : [CGSize] = [
    CGSize(width: -32 , height: 140),
    CGSize(width: 170 , height: -170),
    CGSize(width: 170 , height: 170),
    CGSize(width: 170 , height: 170)]
            
#Preview { EarthView() }
