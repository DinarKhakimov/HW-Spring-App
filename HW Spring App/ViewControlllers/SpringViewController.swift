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
    
    @IBAction func pressedRunButton(_ sender: SpringButton) {
        var randomCGFloat = Float.random(in: 0...1)
        guard let randomPreset = Spring.AnimationPreset.allCases.randomElement() else { return }
        springViewAnimation.animation = randomPreset.rawValue
        
        guard let randomCurve = Spring.AnimationCurve.allCases.randomElement() else { return }
        springViewAnimation.curve = randomCurve.rawValue
        
        springViewAnimation.force = 1
        springViewAnimation.duration = CGFloat(randomCGFloat)
        springViewAnimation.delay = CGFloat(randomCGFloat)
        
        for springLabel in springLabels {
            if springLabel.tag == 0 {
                springLabel.text = randomPreset.rawValue
            } else if springLabel.tag == 1 {
                springLabel.text = randomCurve.rawValue
            } else {
                springLabel.text = String(randomCGFloat)
            }
        }
        
       
        
        springViewAnimation.animate()
        
    }

}


