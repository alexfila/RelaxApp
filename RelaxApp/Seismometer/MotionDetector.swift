//
//  MotionDetector.swift
//  RelaxApp
//
//  Created by Alex Fila on 03/10/24.
//

import CoreMotion
import UIKit

class MotionDetector: ObservableObject {

    private let motionManager = CMMotionManager()

    private var timer = Timer()
    private var updateInterval: TimeInterval

    @Published var pitch: Double = 0
    @Published var roll: Double = 0
    @Published var yaw: Double = 0
    @Published var xAcceleration: Double = 0
    @Published var yAcceleration: Double = 0
    @Published var zAcceleration: Double = 0

    var onUpdate: (() -> Void) = {}

    init(updateInterval: TimeInterval) {
        self.updateInterval = updateInterval
    }

    func start() {
        
        if motionManager.isDeviceMotionAvailable {
            motionManager.startDeviceMotionUpdates()
            timer = Timer.scheduledTimer(withTimeInterval: updateInterval, repeats: true) { [weak self] _ in
                self?.updateMotionData()
            }
        } else {
            print("Device motion not available")
        }
    }

    func updateDetector(with data: CMDeviceMotion) {
        roll = data.attitude.roll
        pitch = data.attitude.pitch
        yaw = data.attitude.yaw
        xAcceleration = data.userAcceleration.x
        yAcceleration = data.userAcceleration.y
        zAcceleration = data.userAcceleration.z
    }
    
    func updateMotionData() {
        if let data = motionManager.deviceMotion {
            updateDetector(with: data)
            onUpdate()
        }
    }
    func stop() {
        motionManager.stopDeviceMotionUpdates()
        timer.invalidate()
    }

    deinit {
        stop()
    }
}

extension MotionDetector {
    func started() -> MotionDetector {
        start()
        return self
    }
}
