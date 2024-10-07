//
//  ToDoView.swift
//  RelaxApp
//
//  Created by Alex Fila on 07/10/24.
//

import SwiftUI

struct ToDoView: View {
    var body: some View {
        VStack {
            Text("In progress...👨🏻‍💻👩🏻‍💻")
                .font(.largeTitle)
            Button("Donate here💰😁") {
            }
            .font(.title)
            .buttonStyle(.borderedProminent)
        }
        .padding()
    }
}

#Preview {
    ToDoView()
}
