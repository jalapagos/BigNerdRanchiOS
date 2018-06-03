//
//  ViewController.swift
//  BigNerdRanch
//
//  Created by Jalaj Punn on 12/4/17.
//  Copyright © 2017 jalapagosInc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var currentQuestionLabel: UILabel!
    @IBOutlet var nextQuestionLabel: UILabel!
    @IBOutlet weak var answerLabel: UILabel!
    
    let questions : [String] = [
        "What is 7+7?",
        "What is the capital of Vermont?",
        "What is cognac made frome?"
    ]
    
    let answers : [String] = [
        "14",
        "Montpelier",
        "Grapes"
    ]
    
    var currentQuestionIndex : Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        currentQuestionLabel.text = questions[currentQuestionIndex]
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        //Set label's initial alpha
        currentQuestionLabel.alpha = 0
    }
    
    func animateLabelTransitions() {
        // Animate the alpha
        UIView.animate(withDuration: 0.5, animations: {
            self.currentQuestionLabel.alpha = 0
            self.nextQuestionLabel.alpha = 1
        })
    }
    
    
    
    @IBAction func showNextQuestion(_ sender: UIButton) {
        currentQuestionIndex += 1
        if (currentQuestionIndex == answers.count) {
            currentQuestionIndex = 0
        }
        let question: String = questions[currentQuestionIndex]
        nextQuestionLabel.text = question
        answerLabel.text = "???"
        animateLabelTransitions()
    }
    
    
    @IBAction func showAnswer(_ sender: UIButton) {
        let answer: String = answers[currentQuestionIndex]
        answerLabel.text = answer
    }
}

