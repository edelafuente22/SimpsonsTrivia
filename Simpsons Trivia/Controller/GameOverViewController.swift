//
//  GameOverViewController.swift
//  Simpsons Trivia
//
//  Created by Edward de la Fuente on 1/14/18.
//  Copyright © 2018 Edward de la Fuente. All rights reserved.
//

import UIKit
import Social

class GameOverViewController: UIViewController {
    
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
        if score == 12 {
            endImageView.loadGif(name: "score12")
            endGameTitle.text = "PERFECTION!"
            endGameLabel.text = "You got a score of \(score) out of 12! \n\nYou really are on fire!"
        } else if score > 8 && score < 12 {
            endImageView.loadGif(name: "score891011")
            endGameTitle.text = "VERY GOOD!"
            endGameLabel.text = "You got a score of \(score) out of 12! You get the Monty Burns Award for Outstanding Achievement in the Field of Excellence."
        } else if score > 5 && score <= 8 {
            endImageView.loadGif(name: "score678")
            endGameTitle.text = "NOT BAD!"
            endGameLabel.text = "You got a score of \(score) out of 12! \n\nEvery Simpson dance now!"
        } else if score > 2 && score <= 5 {
            endImageView.loadGif(name: "score345")
            endGameTitle.text = "IT WAS OK, I GUESS"
            endGameLabel.text = "You got a score of \(score) out of 12! \n\nThat was, well, meh."
        } else {
            endImageView.loadGif(name: "score012")
            endGameTitle.text = "OUCH!"
            endGameLabel.text = "You got a score of \(score) out of 12! \n\nLet this be a lesson to you: Never try."
        }
    }
    
    @IBAction func shareFacebook(_ sender: UIButton) {
        if SLComposeViewController.isAvailable(forServiceType: SLServiceTypeFacebook) {
            let fbShare:SLComposeViewController = SLComposeViewController(forServiceType: SLServiceTypeFacebook)
            
            fbShare.setInitialText("I just scored a \(score) out of 12 on Simpsons Trivia! Get the game here: ")
            
            self.present(fbShare, animated: true, completion: nil)
            
        } else {
            let alert = UIAlertController(title: "Accounts", message: "Please login to a Facebook account to share.", preferredStyle: UIAlertControllerStyle.alert)
            
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
    }
    
    @IBAction func shareTwitter(_ sender: UIButton) {
        if SLComposeViewController.isAvailable(forServiceType: SLServiceTypeTwitter) {
            
            let tweetShare:SLComposeViewController = SLComposeViewController(forServiceType: SLServiceTypeTwitter)
            
            tweetShare.setInitialText("I just scored a \(score) out of 12 on Simpsons Trivia! Get the game here: ")

            
            self.present(tweetShare, animated: true, completion: nil)
            
        } else {
            
            let alert = UIAlertController(title: "Accounts", message: "Please login to a Twitter account to tweet.", preferredStyle: UIAlertControllerStyle.alert)
            
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
            
            self.present(alert, animated: true, completion: nil)
        }
    }
    
}
