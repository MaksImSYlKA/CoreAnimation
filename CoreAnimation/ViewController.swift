//
//  ViewController.swift
//  CoreAnimation
//
//  Created by Максим Сылка on 24.01.2024.
//

import UIKit
import SpringAnimation


final class ViewController: UIViewController {
    
    @IBOutlet var coreAnimationView: UIView!
    
    @IBOutlet var springAnimationView: SpringView!
    private var isAnimating = false
    
    @IBAction func startCoreAnimation(_ sender: UIButton) {
        sender.pulsate()
        
        UIView.animate(
            withDuration: 0.7,
            delay: 0,
            options: [.autoreverse,.repeat]) {
                [unowned self] in
                if !isAnimating {
                    coreAnimationView.frame.origin.x -= 40
                    isAnimating.toggle()
                }
            }
    }
    
    @IBAction func startSpringAnimation(_ sender: SpringButton) {
        sender.animation = "pop"
        sender.duration = 2
        sender.animate()
        
        springAnimationView.animation = "squeeze"
        springAnimationView.force = 2
        springAnimationView.animate()
    }
}

