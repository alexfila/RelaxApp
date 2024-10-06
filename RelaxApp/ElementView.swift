//
//  ElementView.swift
//  RelaxApp
//
//  Created by Alex Fila on 06/10/24.
//

import SwiftUI

struct ElementView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 40.0)
                .foregroundColor(.brown)
            VStack {
                Image(systemName: "mountain.2")
                    .resizable()
                    .scaledToFit()
                    .foregroundColor(.black)
                Text("Earth")
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
