//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var ButtonOption1: UIButton!
    @IBOutlet weak var ButtonOption2: UIButton!
    @IBOutlet weak var ButtonOption3: UIButton!
    
    var quizBrain = QuizBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    @IBAction func answerButtonPressed(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle!
        let userGotItRight = quizBrain.checkAnswer(userAnswer)
        
        if userGotItRight {
            sender.backgroundColor = UIColor.green
        } else {
            sender.backgroundColor = UIColor.red
        }
        
        quizBrain.nextQuestion()
        
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
        
        
    }
    
    @objc func updateUI(){
        questionLabel.text = quizBrain.getQuestionText()
        ButtonOption1.setTitle(quizBrain.getQuestionOptions()[0], for: .normal)
        ButtonOption2.setTitle(quizBrain.getQuestionOptions()[1], for: .normal)
        ButtonOption3.setTitle(quizBrain.getQuestionOptions()[2], for: .normal)
        progressBar.progress = quizBrain.getProgress()
        scoreLabel.text = "Score: \(quizBrain.getScore())"
        ButtonOption1.backgroundColor = UIColor.clear
        ButtonOption2.backgroundColor = UIColor.clear
        ButtonOption3.backgroundColor = UIColor.clear
    }
    
}

