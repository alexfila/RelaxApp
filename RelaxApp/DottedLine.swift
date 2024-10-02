//
//  DottedLine.swift
//  RelaxApp
//
//  Created by Alex Fila on 02/10/24.
//
import SwiftUI

struct ContentView: View {
    var body: some View {
        Line()
            .stroke(style: .init(dash: [20]))
            .foregroundStyle(.pink)
            .frame(height: 35)
    }
}
struct Line: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: CGPoint(x: 0, y: 0))
        path.addLine(to: CGPoint(x: rect.width, y: 0))
        return path
    }
}

#Preview {
    ContentView()
}
