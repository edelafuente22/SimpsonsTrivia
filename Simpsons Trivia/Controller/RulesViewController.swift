//
//  RulesViewController.swift
//  Simpsons Trivia
//
//  Created by Edward de la Fuente on 1/17/18.
//  Copyright © 2018 Edward de la Fuente. All rights reserved.
//

import UIKit
import Foundation

class RulesViewController: UIViewController, UITextViewDelegate {

    @IBOutlet weak var rulesTextView: UITextView!
    
    func rulesText() -> NSAttributedString {
        let string = "How do I play this game? \nEach game consists of 12 questions, with each question carrying a 15-second time limit. Answer as many as you can to test your knowledge of \"The Simpsons\"! \n\nHow does scoring work? \nScore points based on whether you guess each question correctly and how quickly you submit your guess. \n\nDo I need to sign in to Game Center to play? \nNo, signing in to Game Center is optional. However, you can use it to track your high scores and how well you score against other players. \n\nWhy do I see some of the same questions over and over? \nThe game contains more than 400 questions, and we are adding new questions with every update. You will likely see repeat questions the more you play, but if you play multiple games in one session, questions will not repeat. \n\nWho created this game? \nWoo-Hoo Trivia was built by Edward de la Fuente, a developer and devoted Simpsons fan based in Los Angeles. Visit my website to find out more about me. \n\nAre you affiliated with \"The Simpsons\"? \nNo. \"The Simpsons\" is a registered trademark of 20th Century Fox. \n\nWhy did you make this game? \nBecause myself and many of my friends are hardcore Simpsons fans, much like the users I hope will be playing this game. Inspired by \"Simpsons\" trivia nights and online groups, I wanted to create something fans can use to pass the time while beefing up their knowledge of the show. \n\nWhere did you get the images from? \nAll images and GIFs were generated through Frinkiac. \n\nDo questions cover the entire history of \"The Simpsons\"? \nMost questions draw from Seasons 1 through 18, but general knowledge questions take into account the series' entire history. \n\nI think I saw an error in one of the questions. How do I report it?\nDrop me a line via email at woohootrivia@gmail.com to report errors and give feedback. \n\nCan I suggest some questions to include in the game? \nSure! Use the same email (woohootrivia@gmail.com) to send us your ideas." as NSString
        
        let attributedString = NSMutableAttributedString(string: string as String, attributes: [NSAttributedStringKey.font:UIFont.systemFont(ofSize: 15.0)])
        
        let boldFontAttribute = [NSAttributedStringKey.font: UIFont.boldSystemFont(ofSize: 15.0)]
        
        // BOLDED PART OF STRING
        attributedString.addAttributes(boldFontAttribute, range: string.range(of: "How do I play this game?"))
        attributedString.addAttributes(boldFontAttribute, range: string.range(of: "How does scoring work?"))
        attributedString.addAttributes(boldFontAttribute, range: string.range(of: "Do I need to sign in to Game Center to play?"))
        attributedString.addAttributes(boldFontAttribute, range: string.range(of: "Why do I see some of the same questions over and over?"))
        attributedString.addAttributes(boldFontAttribute, range: string.range(of: "Who created this game?"))
        attributedString.addAttributes(boldFontAttribute, range: string.range(of: "Are you affiliated with \"The Simpsons\"?"))
        attributedString.addAttributes(boldFontAttribute, range: string.range(of: "Why did you make this game?"))
        attributedString.addAttributes(boldFontAttribute, range: string.range(of: "Where did you get the images from?"))
        attributedString.addAttributes(boldFontAttribute, range: string.range(of: "Do questions cover the entire history of \"The Simpsons\"?"))
        attributedString.addAttributes(boldFontAttribute, range: string.range(of: "I think I saw an error in one of the questions. How do I report it?"))
        attributedString.addAttributes(boldFontAttribute, range: string.range(of: "Can I suggest some questions to include in the game?"))
        
        // HYPERLINKS
        attributedString.addAttribute(.link, value: "http://www.edwarddelafuente.com", range: string.range(of: "my website"))
        attributedString.addAttribute(.link, value: "http://www.foxmovies.com", range: string.range(of: "20th Century Fox"))
        attributedString.addAttribute(.link, value: "http://www.frinkiac.com", range: string.range(of: "Frinkiac"))
        
        return attributedString
    }
    
    func textView(_ textView: UITextView, shouldInteractWith URL: URL, in characterRange: NSRange, interaction: UITextItemInteraction) -> Bool {
        UIApplication.shared.open(URL, options: [:])
        return false
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.isHidden = false

        rulesTextView.attributedText = rulesText()
        
        self.rulesTextView.delegate = self
        self.rulesTextView.isUserInteractionEnabled = true
        self.rulesTextView.isEditable = false
        self.rulesTextView.isSelectable = true
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        self.rulesTextView.setContentOffset(CGPoint.zero, animated: false)
    }

}
