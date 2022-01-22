//
//  DataManager.swift
//  HW Spring App
//
//  Created by Johnny Boshechka on 1/23/22.
//

import Spring

class DataManager {
    static let shared = DataManager()
    let presetArray = Spring.AnimationPreset.allCases
    let curveArray = Spring.AnimationCurve.allCases
    private init() {}
}
