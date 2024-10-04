//
//  BubbleLevel.swift
//  RelaxApp
//
//  Created by Alex Fila on 03/10/24.
//

import SwiftUI

struct BubbleLevel: View {
    @EnvironmentObject private var detector: MotionDetector

    let range = Double.pi
    let levelSize: CGFloat = 300

    var rollAsFraction: Double {
        (detector.roll + range/2) / range
    }
    
    var pitchAsFraction: Double {
        (detector.pitch + range/2) / range
    }

    var bubbleXPosition: CGFloat {
        return OrientationDetector.shared.adjustedRoll(forRoll: rollAsFraction, pitch: pitchAsFraction) * levelSize
    }

    var bubbleYPosition: CGFloat {
        return OrientationDetector.shared.adjustedPitch(forRoll: rollAsFraction, pitch: pitchAsFraction) * levelSize
    }

    var verticalLine: some View {
        Rectangle()
            .frame(width: 0.5, height: 40)
    }

    var horizontalLine: some View {
        Rectangle()
            .frame(width: 40, height: 0.5)
    }

    var body: some View {
        
        VStack {
        Circle()
            .foregroundStyle(Color.secondary.opacity(0.25))
            .frame(width: levelSize, height: levelSize)
            .overlay(PointerView()
                        .position(x: bubbleXPosition, y: bubbleYPosition)
            )
        }
    }
}

struct BubbleLevel_Previews: PreviewProvider {
    @StateObject static private var detector = MotionDetector(updateInterval: 0.01).started()
    
    static var previews: some View {
        BubbleLevel()
            .environmentObject(detector)
    }
}

