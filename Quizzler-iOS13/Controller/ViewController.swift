//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var scoreLbl: UILabel!
    @IBOutlet weak var questionLbl: UILabel!
    
    @IBOutlet weak var progressBar: UIProgressView!
    
    @IBOutlet weak var option1Btn: UIButton!
    @IBOutlet weak var option2Btn: UIButton!
    @IBOutlet weak var option3Btn: UIButton!

    var quizBrain = QuizBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.updateUI()
        // Do any additional setup after loading the view.
    }

    @IBAction func ansAction(_ sender: UIButton) {
        let userAns = sender.currentTitle! // True False
        let userGotItRight = quizBrain.checkAnswer(userAns)
        
        if userGotItRight {
            sender.backgroundColor = UIColor.green
        } else {
            sender.backgroundColor = UIColor.red
        }
        
        quizBrain.nextQuestion()
        
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(self.updateUI), userInfo: nil, repeats: false)
        
    }
    
    
    @objc func updateUI() {
        self.questionLbl.text = quizBrain.getQuestionText()
        option1Btn.backgroundColor = UIColor.clear
        option2Btn.backgroundColor = UIColor.clear
        option3Btn.backgroundColor = UIColor.clear
        progressBar.progress = quizBrain.getProgress()
        self.scoreLbl.text = "Score \(quizBrain.getScore())"
        option1Btn.setTitle(quizBrain.gettitle1(), for: .normal)
        option2Btn.setTitle(quizBrain.gettitle2(), for: .normal)
        option3Btn.setTitle(quizBrain.gettitle3(), for: .normal)
    }

}

