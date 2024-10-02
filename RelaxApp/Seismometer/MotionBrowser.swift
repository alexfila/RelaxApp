//
//  MotionBrowser.swift
//  RelaxApp
//
//  Created by Alex Fila on 03/10/24.
//

import SwiftUI

struct MotionBrowser: View {

    @StateObject private var detector = MotionDetector(updateInterval: 0.01)
    @State private var isShowingSheet = false
    
    var body: some View {
        VStack {
            BubbleLevel()
        }
        .pickerStyle(.segmented)
        .padding()
        .environmentObject(detector)
        .onAppear() {
            detector.start()
        }
        .onDisappear {
            detector.stop()
        }
    }
    
    enum SeismometerDisplay {
        case bubble
    }
    
}

struct MotionBrowser_Previews: PreviewProvider {
    static var previews: some View {
        MotionBrowser()
    }
}

private func linkView(image: String, title: String, subtitle: String) -> some View {
    HStack() {
        Image(systemName: image)
            .foregroundColor(.accentColor)
            .padding()
            .font(.title2)
        
        VStack(alignment: .leading, spacing: 8) {
            Text(title)
                .font(.headline)
            Text(subtitle)
                .font(.caption)
        }
        .padding(.trailing)
    }
}
