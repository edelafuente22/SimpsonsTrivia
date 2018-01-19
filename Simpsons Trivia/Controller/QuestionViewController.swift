//
//  QuestionViewController.swift
//  Simpsons Trivia
//
//  Created by Edward de la Fuente on 1/13/18.
//  Copyright © 2018 Edward de la Fuente. All rights reserved.
//

import UIKit

class QuestionViewController: UIViewController {
    @IBOutlet weak var questionCounter: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var progressView: UIProgressView!
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var questionLabel: UILabel!
    
    @IBOutlet weak var optionA: UIButton!
    @IBOutlet weak var optionB: UIButton!
    @IBOutlet weak var optionC: UIButton!
    @IBOutlet weak var optionD: UIButton!
    
    let allQuestions = QuestionBank()
    var questionNumber: Int = 0
    var questionArray: [Int] = [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60]
    var questionIndex: Int = 0
    var correctResponses: Int = 0
    var rightAnswer: Int = 0
    var questionCount: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateQuestion()
        updateHeader()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func updateQuestion(){
        if questionCount < 12{
            // THIS CHOOSES QUESTION AT RANDOM
            questionIndex = Int(arc4random_uniform(UInt32(questionArray.count)))
            questionNumber = questionArray[questionIndex]
            print(questionNumber)
            questionArray.remove(at: questionIndex)
            
            // REST OF QUESTION DISPLAY LOGIC
            imageView.image = UIImage(named:(allQuestions.qList[questionNumber].questionImage))
            questionLabel.textColor = UIColor.black
            questionLabel.text = allQuestions.qList[questionNumber].question
            rightAnswer = allQuestions.qList[questionNumber].correctAnswer
            optionA.setTitle(allQuestions.qList[questionNumber].optionA, for: UIControlState.normal)
            optionB.setTitle(allQuestions.qList[questionNumber].optionB, for: UIControlState.normal)
            optionC.setTitle(allQuestions.qList[questionNumber].optionC, for: UIControlState.normal)
            optionD.setTitle(allQuestions.qList[questionNumber].optionD, for: UIControlState.normal)
            
            updateHeader()
        } else {
            self.performSegue(withIdentifier: "Game Over", sender: Any?.self)
        }
        
    }
    
    func updateHeader(){
        scoreLabel.text = "Correct: \(correctResponses)"
        questionCounter.text = "\(questionCount + 1)/12"
        
    }
    
    @IBAction func answerPressed(_ sender: UIButton) {
        if sender.tag == rightAnswer{
            print("correct")
            questionLabel.text = "CORRECT!"
            questionLabel.textColor = UIColor.green
         //   questionLabel.font = questionLabel.font.bold
            correctResponses += 1
            questionCount += 1
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.0, execute: {
                self.updateQuestion()
            })
        }
        else{
            print("incorrect")
            questionLabel.text = "WRONG!"
            questionLabel.textColor = UIColor.red
         //   questionLabel.font = questionLabel.font.bold
            questionCount += 1
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.0, execute: {
                self.updateQuestion()
            })
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if segue.destination is GameOverViewController
        {
            let GameScore = segue.destination as? GameOverViewController
            GameScore?.score = correctResponses
        }
    }
}

extension UIFont {
    var bold: UIFont {
        return with(traits: .traitBold)
    } // bold
    
    var italic: UIFont {
        return with(traits: .traitItalic)
    } // italic
    
    var boldItalic: UIFont {
        return with(traits: [.traitBold, .traitItalic])
    } // boldItalic
    
    
    func with(traits: UIFontDescriptorSymbolicTraits) -> UIFont {
        guard let descriptor = self.fontDescriptor.withSymbolicTraits(traits) else {
            return self
        } // guard
        
        return UIFont(descriptor: descriptor, size: 0)
    } // with(traits:)
}
