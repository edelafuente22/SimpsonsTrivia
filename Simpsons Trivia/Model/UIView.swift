//
//  UIView.swift
//  Simpsons Trivia
//
//  Created by Edward de la Fuente on 5/11/18.
//  Copyright © 2018 Edward de la Fuente. All rights reserved.
//

import UIKit
import SRCountdownTimer

extension UIView {
    
    // FOR MAIN VC
    func fadeInTitle() {
        UIView.animate(withDuration: 1.0, delay: 1.0, options: UIViewAnimationOptions.curveEaseIn, animations: {
            self.alpha = 1.0
        }, completion: nil)
    }
    
    func fadeInLabel() {
        UIView.animate(withDuration: 0.2, delay: 2.0, options: UIViewAnimationOptions.curveEaseIn, animations: {
            self.alpha = 1.0
        }, completion: nil)
    }
    
    func fadeInButton() {
        UIView.animate(withDuration: 1.0, delay: 2.5, options: UIViewAnimationOptions.curveEaseIn, animations: {
            self.alpha = 1.0
        }, completion: nil)
    }
    
    // FOR QUESTION VC
    func fadeOutView() {
        UIView.animate(withDuration: 0.3, delay: 0.5, options: UIViewAnimationOptions.curveEaseOut, animations: {
            self.alpha = 0.0
        }, completion: nil)
    }
    
    func pulseEffect(view: UIView, animationTime: Float)
    {
        UIView.animate(withDuration: TimeInterval(animationTime), animations: {
            
            view.transform = CGAffineTransform(scaleX: 1.1, y: 1.1)
            
        },completion:{completion in
            UIView.animate(withDuration: TimeInterval(animationTime), animations: { () -> Void in
                
                view.transform = CGAffineTransform(scaleX: 1, y: 1)
            })
        })
    }
}
