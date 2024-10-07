//
//  File.swift
//  RelaxApp
//
//  Created by Alex Fila on 06/10/24.
//
import SwiftUI

enum element {
    case earth
    case water
    case fire
    case wind
    
    @ViewBuilder
    static func picker(_ selection: element) -> some View {
        switch selection {
        case .earth:
            ElementView(color: .brown, image: Image(systemName: "mountain.2"), text: Text("Earth"))
        case .water:
            ElementView(color: .blue, image: Image(systemName: "water.waves"), text: Text("Water"))
        case .fire:
            ElementView(color: .orange, image: Image(systemName: "flame"), text: Text("Fire"))
        case .wind:
            ElementView(color: .mint, image: Image(systemName: "wind"), text: Text("Wind"))
        }
    }
}


