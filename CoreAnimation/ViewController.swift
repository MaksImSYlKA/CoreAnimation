//
//  ViewController.swift
//  CoreAnimation
//
//  Created by Максим Сылка on 24.01.2024.
//

import UIKit

final class ViewController: UIViewController {
    
    @IBOutlet var coreAnimationView: UIView!
    
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
    
}

