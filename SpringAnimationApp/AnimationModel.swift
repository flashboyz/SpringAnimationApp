//
//  AnimationModel.swift
//  SpringAnimationApp
//
//  Created by Константин Прокофьев on 06.08.2021.
//

import Foundation


struct Animation {
    
    let name: String
    let curve: String
    let force: Float
    let duration: Float
    let delay: Float
    
    var description: String {
        """
        Preset:\(name)
        Curve:\(curve)
        Force:\(String(format: "%.02f", force))
        Duration:\(String(format: "%.02F", duration))
        Delay:\(String(format: "%.02f", delay))
        """
    }
    
    static func getRandomAniamtion() -> Animation {
        Animation(
            name: DataManager.shared.animations.randomElement()?.rawValue ?? "slideLeft",
            curve: DataManager.shared.curves.randomElement()?.rawValue ?? "easeIn",
            force: Float.random(in: 1...2),
            duration: Float.random(in: 1...2),
            delay: 0.3
        )
    }
    
}
