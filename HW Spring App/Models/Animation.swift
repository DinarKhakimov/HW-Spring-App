//
//  Animation.swift
//  HW Spring App
//
//  Created by Johnny Boshechka on 1/22/22.
//

import Foundation

struct Animation {
    let preset: String
    let curve: String
    let force: Double
    let duration: Double
    let delay: Double
    
    var description: String {
        """
        preset: \(preset)
        curve: \(curve)
        force: \(String(format: "%.02f", force))
        duration: \(String(format: "%.02f", duration))
        delay: \(String(format: "%.02f", delay))
        """
    }
    
    static func getAnimation() -> Animation {
        Animation(preset: DataManager.shared.presetArray.randomElement()?.rawValue ?? "slideLeft",
                  curve: DataManager.shared.curveArray.randomElement()?.rawValue ?? "easyIn",
                  force: Double.random(in: 1...2),
                  duration: Double.random(in: 0...3),
                  delay: 0.2)
    }
}
