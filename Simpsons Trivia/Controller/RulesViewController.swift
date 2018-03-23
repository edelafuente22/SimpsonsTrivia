//
//  RulesViewController.swift
//  Simpsons Trivia
//
//  Created by Edward de la Fuente on 1/17/18.
//  Copyright © 2018 Edward de la Fuente. All rights reserved.
//

import UIKit

class RulesViewController: UIViewController {

    @IBOutlet weak var rulesTextView: UITextView!
    
//    func attText() {
//        let rulesString = "safsafsfsaf"
//
//        let attributes = [NSAttributedStringKey.font: UIFont(name: "ArialMT", size: 11)]
//
//        let attString = NSMutableAttributedString(string: rulesString, attributes: (attributes as Any as! [NSAttributedStringKey : Any]))
//
//        rulesTextView.attributedText = attString
//    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.isHidden = false

        // view.addSubview(rulesTextView)
        
        rulesTextView.text = "How do I play this game? \nEach game consists of 12 questions. Answer as many as you can to test your knowledge of \"The Simpsons\"! \n\nWill I get the same questions in every game? \nThe game contains more than 300 questions, and we are adding new questions with every update. However, you will likely see repeat questions the more you play. \n\nAre you affilated with \"The Simpsons\"? \nNo. The Simpsons is a registered trademark of 20th Century Fox. \n\nWhere did you get the images from? \nAll images come from Frinkiac. \n\nDo questions cover the entire history of \"The Simpsons\"? \nCurrently, questions draw from Seasons 1 through 17."
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
