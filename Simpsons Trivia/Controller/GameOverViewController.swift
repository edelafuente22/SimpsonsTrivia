//
//  GameOverViewController.swift
//  Simpsons Trivia
//
//  Created by Edward de la Fuente on 1/14/18.
//  Copyright © 2018 Edward de la Fuente. All rights reserved.
//

import UIKit

class GameOverViewController: UIViewController {
    
    var correctTotal: Int = 0
    var score: Int = 0
    
    @IBOutlet weak var endImageView: UIImageView!
    @IBOutlet weak var endGameTitle: UILabel!
    @IBOutlet weak var endGameLabel: UILabel!
    
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
        if correctTotal == 12 {
            endImageView.loadGif(name: "score12")
            endGameTitle.text = "PERFECTION!"
            endGameLabel.text = "You got all 12 correct and scored \(score) points! \n\nYou really are on fire!"
        } else if correctTotal > 8 && correctTotal < 12 {
            endImageView.loadGif(name: "score891011")
            endGameTitle.text = "VERY GOOD!"
            endGameLabel.text = "You got \(correctTotal) right and scored \(score) points! You get the Monty Burns Award for Outstanding Achievement in the Field of Excellence."
        } else if correctTotal > 5 && correctTotal <= 8 {
            endImageView.loadGif(name: "score678")
            endGameTitle.text = "NOT BAD!"
            endGameLabel.text = "You got \(correctTotal) right and scored \(score) points! \n\nEvery Simpson dance now!"
        } else if correctTotal > 2 && correctTotal <= 5 {
            endImageView.loadGif(name: "score345")
            endGameTitle.text = "IT WAS OK, I GUESS"
            endGameLabel.text = "You got \(correctTotal) right and scored \(score) points! \n\nWish there was a word to describe that performance..."
        } else {
            endImageView.loadGif(name: "score012")
            endGameTitle.text = "OUCH!"
            endGameLabel.text = "You got \(correctTotal) right and scored \(score) points! \n\nThe lesson here is: Never try."
        }
    }
    
}
