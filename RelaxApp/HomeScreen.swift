//
//  HomeScreen.swift
//  RelaxApp
//
//  Created by Alex Fila on 06/10/24.
//

import SwiftUI

struct HomeScreen: View {
    var body: some View {
        NavigationStack {
            Grid(alignment: .center, horizontalSpacing: 20, verticalSpacing: 20)
            {
                GridRow {
                    NavigationLink(destination: BreathView()) {
                        element.picker(.earth)
                    }
                    NavigationLink(destination: BreathView()) {
                        element.picker(.water)
                    }
                }
                GridRow {
                    NavigationLink(destination: BreathView()) {
                        element.picker(.fire)
                    }
                    NavigationLink(destination: BreathView()) {
                        element.picker(.wind)
                    }
                }
            }
            .padding(30)
            .navigationTitle("Relax App")
            .navigationBarTitleDisplayMode(.inline)
            
        }
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}

