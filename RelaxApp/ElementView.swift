//
//  ElementView.swift
//  RelaxApp
//
//  Created by Alex Fila on 06/10/24.
//

import SwiftUI

struct ElementView: View {
    @State var color = Color.brown
    @State var image = Image(systemName: "mountain.2")
    @State var text = Text("Earth")
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 40.0)
                .foregroundColor(color)
            VStack {
                image
                    .resizable()
                    .scaledToFit()
                    .foregroundColor(.black)
                    .padding()
                text
                    .font(.largeTitle)
                    .foregroundColor(.black)
            }
            .padding()
        }
    }
}

#Preview {
    ElementView()
}
