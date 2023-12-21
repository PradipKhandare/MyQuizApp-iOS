//
//  QuizBrain.swift
//  MyQuizzlerApp
//
//  Created by NTS on 20/12/23.
//

import Foundation

struct QuizBrain
{
    let questionArray = [
                        Questions(text: "5 + 5 = 10", answer: "True"),
                        Questions(text: "5 + 1 = 6", answer: "True"),
                        Questions(text: "5 + 0 = 10", answer: "False")
                        ]
    
    var questionNumber = 0
    var score = 0
    
    mutating func checkAnswer(answer userAnswer: String) -> Bool{
        if userAnswer == questionArray[questionNumber].answer {
            score += 1
            return true
        }else {
            return false
        }
    }
    
    func getQuestionText() -> String{
        return questionArray[questionNumber].text
    }
    
    func getProgress() -> Float {
        let progress =  Float(questionNumber) / Float(questionArray.count)
        return progress
    }
    
    mutating func nextQuestion() {
        if questionNumber + 1 < questionArray.count
        {
            questionNumber += 1
        } else {
            questionNumber = 0
            score = 0
        }
    }
    
    
    func getScore() -> Int {
        
        return score
    }
}
