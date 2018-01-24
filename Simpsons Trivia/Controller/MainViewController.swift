//
//  ViewController.swift
//  Simpsons Trivia
//
//  Created by Edward de la Fuente on 1/12/18.
//  Copyright © 2018 Edward de la Fuente. All rights reserved.
//

import UIKit
import Foundation

class MainViewController: UIViewController {

    @IBOutlet weak var titleImage: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var startGame: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.isHidden = true
        
        titleImage.alpha = 0.0
        titleLabel.alpha = 0.0
        startGame.alpha = 0.0
    }
    
    override func viewDidAppear(_ animated: Bool) {
        self.navigationController?.navigationBar.isHidden = true
        
        self.titleImage.fadeInTitle()
        self.titleLabel.fadeInLabel()
        self.startGame.fadeInButton()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

extension UIView {
    func fadeInTitle() {
        UIView.animate(withDuration: 1.0, delay: 1.0, options: UIViewAnimationOptions.curveEaseIn, animations: {
            self.alpha = 1.0
        }, completion: nil)
    }
    
    func fadeInLabel() {
        UIView.animate(withDuration: 0.2, delay: 2.5, options: UIViewAnimationOptions.curveEaseIn, animations: {
            self.alpha = 1.0
        }, completion: nil)
    }
    
    func fadeInButton() {
        UIView.animate(withDuration: 1.5, delay: 4.0, options: UIViewAnimationOptions.curveEaseIn, animations: {
            self.alpha = 1.0
        }, completion: nil)
    }

}

