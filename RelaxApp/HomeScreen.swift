//
//  HomeScreen.swift
//  RelaxApp
//
//  Created by Alex Fila on 06/10/24.
//

import SwiftUI

struct HomeScreen: View {
    var body: some View {
        Grid(alignment: .center, horizontalSpacing: 20, verticalSpacing: 20)
        {
            GridRow {
                Color.brown
                Color.orange
            }
            GridRow {
                Color.blue
                Color.mint
            }
        }
        .padding(30)
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}

