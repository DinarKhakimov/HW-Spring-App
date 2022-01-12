//
//  ViewController.swift
//  HW Spring App
//
//  Created by Johnny Boshechka on 1/12/22.
//

import Spring

class SpringViewController: UIViewController {
    
    @IBOutlet weak var springViewAnimation: SpringView!
    @IBOutlet var springLabels: [SpringLabel]!
    
    var currentPreset = Spring.AnimationPreset.fadeIn
    var currentCurve = Spring.AnimationCurve.spring
    
    @IBAction func pressedRunButton(_ sender: SpringButton) {
        let randomForce = CGFloat.random(in: 0...1)
        let randomDuration = CGFloat.random(in: 0...1)
        let randomDelay = CGFloat.random(in: 0...1)
        
        springViewAnimation.animation = currentPreset.rawValue
        springViewAnimation.curve = currentCurve.rawValue
        springViewAnimation.force = randomForce
        springViewAnimation.duration = randomDuration
        springViewAnimation.delay = randomDelay
        
        springLabels[0].text = "Preset: \(currentPreset.rawValue)"
        springLabels[1].text = "Curve: \(currentCurve.rawValue)"
        springLabels[2].text = "Force: \(String(format: "%.2f", randomForce))"
        springLabels[3].text = "Duration: \(String(format: "%.2f", randomDuration))"
        springLabels[4].text = "Delay: \(String(format: "%.2f", randomDelay))"
        
        guard let nextPreset = Spring.AnimationPreset.allCases.randomElement() else {return}
        guard let nextCurve = Spring.AnimationCurve.allCases.randomElement() else { return }
        
        sender.setTitle("Run next preset: \(nextPreset.rawValue)", for: .normal)
        
        currentPreset = nextPreset
        currentCurve = nextCurve
        
        springViewAnimation.animate()
    }
}


