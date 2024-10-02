//
//  OrientationDetector.swift
//  RelaxApp
//
//  Created by Alex Fila on 03/10/24.
//

import UIKit
import CoreMotion

class OrientationDetector {
    
    static let shared = OrientationDetector()
    
    fileprivate var currentOrientation: UIDeviceOrientation = .landscapeLeft
    fileprivate var orientationObserver: NSObjectProtocol? = nil
    fileprivate let orientationNotification = UIDevice.orientationDidChangeNotification
    
    init() {
        UIDevice.current.beginGeneratingDeviceOrientationNotifications()
        
        orientationObserver = NotificationCenter.default.addObserver(forName: orientationNotification, object: nil, queue: .main) { [weak self] _ in
            switch UIDevice.current.orientation {
            case .faceUp, .faceDown, .unknown:
                break
            default:
                self?.currentOrientation = UIDevice.current.orientation
            }
        }
    }
    
    fileprivate func adjustedRollAndPitch(forRoll roll: Double, pitch: Double) -> (Double, Double) {
        var updatedRoll = roll.magnitude
        if updatedRoll > 1 {
            updatedRoll = updatedRoll - ((updatedRoll - 1) * 2)
        }
        
        switch currentOrientation {
        case .unknown, .faceUp, .faceDown:
            return (1-updatedRoll, pitch)
        case .landscapeLeft:
            return (1-pitch, updatedRoll)
        case .portrait:
            return (1-updatedRoll, 1-pitch)
        case .portraitUpsideDown:
            return (updatedRoll, pitch)
        case .landscapeRight:
            return (pitch, 1-updatedRoll)
        @unknown default:
            return (1-updatedRoll, 1-pitch)
        }
    }
    
    deinit {
        if let orientationObserver = orientationObserver {
            NotificationCenter.default.removeObserver(orientationObserver, name: orientationNotification, object: nil)
        }
        orientationObserver = nil
    }
    
}

extension OrientationDetector {
    func adjustedRoll(forRoll roll: Double, pitch: Double) -> Double {
        adjustedRollAndPitch(forRoll: roll, pitch: pitch).0
    }
    
    func adjustedPitch(forRoll roll: Double, pitch: Double) -> Double {
        adjustedRollAndPitch(forRoll: roll, pitch: pitch).1
    }
}
