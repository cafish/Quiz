//
//  ViewController.swift
//  Quiz
//
//  Created by Jiajia Luo on 5/20/15.
//  Copyright (c) 2015 N/A. All rights reserved.
//
//  Added AutoLayout

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var questionLabel: UILabel!
    
    @IBOutlet weak var answerLabel: UILabel!
    
    let questions: [String] = ["1+1?",
        "What is 2+2?",
        "3+3?",
        "What is Pi"]
    
    let answers: [String] = ["2",
            "4",
            "6",
            "3.1415926"]
    
    var currentQuestionIndex: Int = 0
    
    
    @IBAction func showQuestion(sender: AnyObject) {
            ++currentQuestionIndex
            if currentQuestionIndex == questions.count {
        currentQuestionIndex = 0
            }
            let question: String = questions[currentQuestionIndex]
            questionLabel.text = question
            answerLabel.text = "???"
    }
    
    
    @IBAction func showAnswer(sender: AnyObject) {
        let answer: String = answers[currentQuestionIndex]
        answerLabel.text = answer
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

