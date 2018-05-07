//
//  ViewController.swift
//  Simpsons Trivia
//
//  Created by Edward de la Fuente on 1/12/18.
//  Copyright © 2018 Edward de la Fuente. All rights reserved.
//

import UIKit
import GameKit
import Foundation

class MainViewController: UIViewController, GKGameCenterControllerDelegate {

    @IBOutlet weak var titleImage: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var startGame: UIButton!
    @IBOutlet weak var signInToGC: UIButton!
    
    var gcEnabled = Bool()
    var gcDefaultLeaderBoard = String()
    let LEADERBOARD_ID = "com.highscores.woohootrivia"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.isHidden = true
        
        titleImage.alpha = 0.0
        titleLabel.alpha = 0.0
        startGame.alpha = 0.0
        signInToGC.alpha = 0.0
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.navigationBar.isHidden = true

    }
    
    override func viewDidAppear(_ animated: Bool) {        
        self.titleImage.fadeInTitle()
        self.titleLabel.fadeInLabel()
        self.startGame.fadeInButton()
        self.signInToGC.fadeInButton()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func signInToGameCenter(_ sender: UIButton) {
        let localPlayer: GKLocalPlayer = GKLocalPlayer.localPlayer()
        
//        let gcVC = GKGameCenterViewController()
//        gcVC.gameCenterDelegate = self
//        gcVC.viewState = .leaderboards
//        gcVC.leaderboardIdentifier = LEADERBOARD_ID
        
        localPlayer.authenticateHandler = {(ViewController, error) -> Void in
            if((ViewController) != nil) {
                // 1. Show login if player is not logged in
                self.present(ViewController!, animated: true, completion: nil)
            } else if (localPlayer.isAuthenticated) {
                // 2. Player is already authenticated & logged in, load game center
                self.gcEnabled = true
                
                // Get the default leaderboard ID
//                localPlayer.loadDefaultLeaderboardIdentifier(completionHandler: { (leaderboardIdentifier, error) in
//                    if error != nil {
//                        print(error!)
//                    } else {
//                        self.gcDefaultLeaderBoard = leaderboardIdentifier! }
//                })
                
            } else {
                // 3. Game center is not enabled on the users device
                self.gcEnabled = false
                print("Local player could not be authenticated!")
                print(error!)
            }
        }
    }
    
    func gameCenterViewControllerDidFinish(_ gameCenterViewController: GKGameCenterViewController) {
        gameCenterViewController.dismiss(animated: true, completion: nil)
    }
    
}

extension UIView {
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
        UIView.animate(withDuration: 1.5, delay: 2.8, options: UIViewAnimationOptions.curveEaseIn, animations: {
            self.alpha = 1.0
        }, completion: nil)
    }

}

