//
//  GameOverViewController.swift
//  Simpsons Trivia
//
//  Created by Edward de la Fuente on 1/14/18.
//  Copyright © 2018 Edward de la Fuente. All rights reserved.
//

import UIKit
import GameKit

class GameOverViewController: UIViewController, GKGameCenterControllerDelegate {
    
    var correctTotal: Int = 0
    var score: Int = 0
    
    @IBOutlet weak var endImageView: UIImageView!
    @IBOutlet weak var endGameTitle: UILabel!
    @IBOutlet weak var endGameLabel: UILabel!
    
    let LEADERBOARD_ID = "com.highscores.woohootrivia"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        finalScore()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func finalScore() {
        
        let finalScoreString = score.formattedWithSeparator
        
        if correctTotal == 12 {
            endImageView.loadGif(name: "score12")
            endGameTitle.text = "PERFECTION!"
            endGameLabel.text = "You got all 12 correct and scored \(finalScoreString) points! \n\nYou really are on fire!"
        } else if correctTotal > 8 && correctTotal < 12 {
            endImageView.loadGif(name: "score891011")
            endGameTitle.text = "VERY GOOD!"
            endGameLabel.text = "You got \(correctTotal) right and scored \(finalScoreString) points! You get the Monty Burns Award for Outstanding Achievement in the Field of Excellence."
        } else if correctTotal > 5 && correctTotal <= 8 {
            endImageView.loadGif(name: "score678")
            endGameTitle.text = "NOT BAD!"
            endGameLabel.text = "You got \(correctTotal) right and scored \(finalScoreString) points! \n\nEvery Simpson dance now!"
        } else if correctTotal > 2 && correctTotal <= 5 {
            endImageView.loadGif(name: "score345")
            endGameTitle.text = "IT WAS OK, I GUESS"
            endGameLabel.text = "You got \(correctTotal) right and scored \(finalScoreString) points! \n\nWish there was a word to describe that performance..."
        } else {
            endImageView.loadGif(name: "score012")
            endGameTitle.text = "OUCH!"
            endGameLabel.text = "You got \(correctTotal) right and scored \(finalScoreString) points! \n\nThe lesson here is: Never try."
        }
    }
    
    @IBAction func viewGameCenter(_ sender: UIButton) {
        let gcVC = GKGameCenterViewController()
        gcVC.gameCenterDelegate = self
        gcVC.viewState = .leaderboards
        gcVC.leaderboardIdentifier = LEADERBOARD_ID
        present(gcVC, animated: true, completion: nil)
    }
    
    func gameCenterViewControllerDidFinish(_ gameCenterViewController: GKGameCenterViewController) {
        gameCenterViewController.dismiss(animated: true, completion: nil)
    }
    
}

extension Formatter {
    static let withSeparator: NumberFormatter = {
        let formatter = NumberFormatter()
        formatter.groupingSeparator = ","
        formatter.numberStyle = .decimal
        return formatter
    }()
}

extension BinaryInteger {
    var formattedWithSeparator: String {
        return Formatter.withSeparator.string(for: self) ?? ""
    }
}
