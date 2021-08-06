//
//  ViewController.swift
//  SpringAnimationApp
//
//  Created by Константин Прокофьев on 04.08.2021.
//

import Spring

class ViewController: UIViewController {
    
    
    @IBOutlet weak var optionAnimationView: SpringView!
    @IBOutlet weak var optionAnimationLabel: UILabel!
    
    
    //MARK: -private properties
    private var animation = Animation.getRandomAniamtion()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        optionAnimationLabel.text = animation.description
    }
    
    
    @IBAction func runAnimationPressed(_ sender: UIButton) {
        optionAnimationLabel.text = animation.description
        
        optionAnimationView.animation = animation.name
        optionAnimationView.force = CGFloat(animation.force)
        optionAnimationView.duration = CGFloat(animation.duration)
        optionAnimationView.delay = CGFloat(animation.delay)
        optionAnimationView.curve = animation.curve
        optionAnimationView.animate()
        
        animation = Animation.getRandomAniamtion()
        sender.setTitle("Run: \(animation.name)", for: .normal)
    }
}



