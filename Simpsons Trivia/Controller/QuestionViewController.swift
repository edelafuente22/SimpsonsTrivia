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
    @IBOutlet weak var timerLabel: UILabel!
    @IBOutlet weak var correctLabel: UILabel!
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var questionLabel: UILabel!
    
    @IBOutlet weak var optionA: UIButton!
    @IBOutlet weak var optionB: UIButton!
    @IBOutlet weak var optionC: UIButton!
    @IBOutlet weak var optionD: UIButton!
    
    let allQuestions = QuestionBank()
    var questionNumber: Int = 0
    var questionArray: [Int] = [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100,101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,120,121,122,123,124,125,126,127,128,129,130,131,132,133,134,135,136,137,138,139,140,141,142,143,144,145,146,147,148,149,150,151,152,153,154,155,156,157,158,159,160,161,162,163,164,165,166,167,168,169,170,171,172,173,174,175,176,177,178,179,180,181,182,183,184,185,186,187,188,189,190,191,192,193,194,195,196,197,198,199,200,201,202,203,204,205,206,207,208,209,210,211,212,213,214,215,216,217,218,219,220,221,222,223,224,225,226,227,228,229,230,231,232,233,234,235,236,237,238,239,240,241,242,243,244,245,246,247,248,249,250,251,252,253,254,255,256,257,258,259,260]
    var questionIndex: Int = 0
    var correctResponses: Int = 0
    var rightAnswer: Int = 0
    var questionCount: Int = 0
    
    var timer = Timer()
    var timeLeft: Int = 0
    var isTimerRunning = false
    
    let newGreen = UIColor(red: 0, green: 165/255, blue: 0, alpha: 1)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateQuestion()
        updateHeader()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
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
            optionA.backgroundColor = UIColor.blue
            optionB.backgroundColor = UIColor.blue
            optionC.backgroundColor = UIColor.blue
            optionD.backgroundColor = UIColor.blue
            questionLabel.text = allQuestions.qList[questionNumber].question
            rightAnswer = allQuestions.qList[questionNumber].correctAnswer
            optionA.setTitle(allQuestions.qList[questionNumber].optionA, for: .normal)
            optionB.setTitle(allQuestions.qList[questionNumber].optionB, for: .normal)
            optionC.setTitle(allQuestions.qList[questionNumber].optionC, for: .normal)
            optionD.setTitle(allQuestions.qList[questionNumber].optionD, for: .normal)
            
            optionA.isEnabled = true
            optionB.isEnabled = true
            optionC.isEnabled = true
            optionD.isEnabled = true
            
            // UPDATING HEADER AND RESTARTING TIMER
            updateHeader()
            startTimer()
            
        } else {
            self.performSegue(withIdentifier: "Game Over", sender: Any?.self)
        }
        
    }
    
    func updateHeader(){
        self.timeLeft = 15
        timerLabel.text = "\(timeLeft)"
        timerLabel.textColor = UIColor.white
        questionCounter.text = "Question \(questionCount + 1)/12"
        correctLabel.text = "Correct: \(correctResponses)"
        
    }
    
    @IBAction func answerPressed(_ sender: UIButton) {
        if sender.tag == rightAnswer{
            print("correct")
            questionLabel.text = "CORRECT!"
            questionLabel.textColor = newGreen
            sender.backgroundColor = newGreen
            
            optionA.isEnabled = false
            optionB.isEnabled = false
            optionC.isEnabled = false
            optionD.isEnabled = false
            
            timer.invalidate()
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
            sender.backgroundColor = UIColor.red
            
            optionA.isEnabled = false
            optionB.isEnabled = false
            optionC.isEnabled = false
            optionD.isEnabled = false
            
            timer.invalidate()
            questionCount += 1
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.0, execute: {
                self.updateQuestion()
            })
        }
    }
    
    func startTimer() {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: (#selector(QuestionViewController.updateTimer)), userInfo: nil, repeats: true)
    }
    
    @objc func updateTimer() {
        timeLeft -= 1
        timerLabel.text = "\(timeLeft)"
        if(timeLeft < 6 && timeLeft >= 1){
            timerLabel.textColor = UIColor.red
        }
        if(timeLeft < 1){
            questionLabel.text = "TIME'S UP!"
            timerLabel.text = ""
            
            optionA.isEnabled = false
            optionB.isEnabled = false
            optionC.isEnabled = false
            optionD.isEnabled = false
            
            timer.invalidate()
            questionLabel.textColor = UIColor.red
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

extension UIButton {
    open override func draw(_ rect: CGRect) {
        self.layer.cornerRadius = 25
        self.clipsToBounds = true
        
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
