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
                        ElementView()
                    }
                    Color.orange
                }
                GridRow {
                    Color.blue
                    Color.mint
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

