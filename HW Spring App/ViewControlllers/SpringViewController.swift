//
//  ViewController.swift
//  HW Spring App
//
//  Created by Johnny Boshechka on 1/12/22.
//

import Spring

class SpringViewController: UIViewController {
    
    @IBOutlet weak var springViewAnimation: SpringView!
    @IBOutlet weak var springDescriptionLabel: SpringLabel!
    
    var springAnimation = Animation.getAnimation()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        springDescriptionLabel.text = springAnimation.description
    }
    
    @IBAction func pressedRunButton(_ sender: SpringButton) {
        springDescriptionLabel.text = springAnimation.description
        
        springViewAnimation.animation = springAnimation.preset
        springViewAnimation.curve = springAnimation.curve
        springViewAnimation.force = springAnimation.force
        springViewAnimation.delay = springAnimation.delay
        springViewAnimation.duration = springAnimation.duration
        
        springViewAnimation.animate()
        
        springAnimation = Animation.getAnimation()
        
        sender.setTitle("Run next: \(springAnimation.preset)", for: .normal)
    }
}


