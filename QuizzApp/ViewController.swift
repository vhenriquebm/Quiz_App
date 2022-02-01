//
//  ViewController.swift
//  QuizzApp
//
//  Created by Vitor Henrique Barreiro Marinho on 01/02/22.
//

import UIKit
import Foundation

class ViewController: UIViewController {

   let quiz = [
    
           Questions(q: "A slug's blood is green.", a: "True"),
           Questions(q: "Approximately one quarter of human bones are in the feet.", a: "True"),
           Questions(q: "The total surface area of two human lungs is approximately 70 square metres.", a: "True"),
           Questions(q: "In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.", a: "True"),
           Questions(q: "In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.", a: "False"),
           Questions(q: "It is illegal to pee in the Ocean in Portugal.", a: "True"),
           Questions(q: "You can lead a cow down stairs but not up stairs.", a: "False"),
           Questions(q: "Google was originally called 'Backrub'.", a: "True"),
           Questions(q: "Buzz Aldrin's mother's maiden name was 'Moon'.", a: "True"),
           Questions(q: "The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.", a: "False"),
           Questions(q: "No piece of square dry paper can be folded in half more than 7 times.", a: "False"),
           Questions(q: "Chocolate affects a dog's heart and nervous system; a few ounces are enough to kill a small dog.", a: "True")
   ]
    
    
    var questionNumber = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        
    }

    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressViewBar: UIProgressView!
    
    

    @IBAction func answerButtonpressed(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle
        let actualAnswer = quiz[questionNumber].answer
        
    
        if userAnswer == actualAnswer {
            sender.backgroundColor = UIColor.green
        }
        
        else  {
            sender.backgroundColor = UIColor.red
        }
    

    if questionNumber + 1 < quiz.count {
        questionNumber += 1
        
    } else {
        
        questionNumber = 0
        
    }
        
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
        
        updateUI()

    } //termina a função
    
    
    @objc func updateUI () {
                     
        questionLabel.text = quiz[questionNumber].text
        
        trueButton.backgroundColor = UIColor.clear
        falseButton.backgroundColor = UIColor.clear
        progressViewBar.progress = Float(questionNumber + 1) / Float(quiz.count)
        
        
        
         }
    

    
    
        }
    


      








