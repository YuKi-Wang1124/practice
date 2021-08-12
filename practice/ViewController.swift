//
//  ViewController.swift
//  practice
//
//  Created by 王昱淇 on 2021/8/11.
//

import UIKit

class ViewController: UIViewController {
    
    func setupGragientBackground() {
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = view.bounds
        gradientLayer.colors = [
            CGColor(red: 1, green: 1, blue: 1, alpha: 1),
            CGColor(red: 1, green: 1, blue: 1, alpha: 1),
            CGColor(red: 1, green: 141/255, blue: 161/255, alpha: 1)
        ]
        view.layer.insertSublayer(gradientLayer, at: 0)
    }
      
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        setupGragientBackground()
    }
    
}

