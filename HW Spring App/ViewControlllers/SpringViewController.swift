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
    
    var startedAnimation = false
    var currentPreset = Spring.AnimationPreset.fadeIn
    
    @IBAction func pressedRunButton(_ sender: SpringButton) {
        if !startedAnimation  {
            springViewAnimation.animation = currentPreset.rawValue
            springLabels[0].text = currentPreset.rawValue
            startedAnimation = true
        } else {
            
            let randomCGFloat = Float.random(in: 0...1)
            guard let randomPreset = Spring.AnimationPreset.allCases.randomElement() else { return }
            sender.setTitle("Run to preset: \(randomPreset.rawValue)", for: .normal)
            currentPreset = randomPreset
            springLabels[0].text = currentPreset.rawValue
            startedAnimation = false
            springViewAnimation.animation = randomPreset.rawValue
            
            guard let randomCurve = Spring.AnimationCurve.allCases.randomElement() else { return }
            springViewAnimation.curve = randomCurve.rawValue
            
            springViewAnimation.force = 1
            springViewAnimation.duration = CGFloat(randomCGFloat)
            springViewAnimation.delay = CGFloat(randomCGFloat)
        }
        
        
        
//        for springLabel in springLabels {
//            switch springLabel.tag {
//            case 0:
//                springLabel.text = randomPreset.rawValue
//            case 1:
//                springLabel.text = randomCurve.rawValue
//            case 2:
//                springLabel.text = String(randomCGFloat)
//            case 3:
//                springLabel.text = String(randomCGFloat)
//            default:
//                springLabel.text = String(randomCGFloat)
//            }
//        }
        
//        for springLabel in springLabels {
//            if springLabel.tag == 0 {
//                springLabel.text = randomPreset.rawValue
//            } else if springLabel.tag == 1 {
//                springLabel.text = randomCurve.rawValue
//            } else {
//                springLabel.text = String(randomCGFloat)
//            }
//        }
        springViewAnimation.animate()
    }

}


