////
////  enum.swift
////  timerTrial
////
////  Created by Maria Reyna  on 1/31/23.
////
//
//import Foundation
//
//enum QuestionType: CaseIterable{
//    case add
//    case subtract
//    case multiply
//}
//
//class AddingGame {
//    var questionNumber = 1
//    var score = 0
//    
//    func start() {
//        print("Welcome")
//        
//        repeat {
//            let randleft = Int.random(in: 1...12)
//            let randright = Int.random(in: 1...12)
//            let operation = QuestionType.allCases.randomElement()!
//            
//            let question: String
//            
//            switch operation {
//            case .add:
//                question = "What is \(randleft) plus \(randright)"
//            case .subtract:
//                question = "What is \(randleft) minus \(randright)"
//            case .multiply:
//                question = "What is \(randleft) times \(randright)"
//            }
//            
//            let correctAnswer: Int
//            switch operation {
//            case .add:
//                correctAnswer = randleft + randright
//            case .subtract:
//                correctAnswer = randleft - randright
//            case .multiply:
//                correctAnswer = randleft * randright
//                
//            }
//            
//            print("\n\(questionNumber). \(question)")
//            print("your answer: ", terminator: "")
//            
//            if let answer = readLine(){
//                guard let answerInt = Int(answer) else{
//                    print("error")
//                    continue
//                }
//                questionNumber += 1
//                
//                if answerInt == correctAnswer {
//                    score += 1
//                    print("Correct")
//                } else{
//                    print("Wrong")
//                }
//                
//            }
//            
//        } while questionNumber < 6
//        print ("\nYou Scored \(score).")
//    }
//}
//
//
