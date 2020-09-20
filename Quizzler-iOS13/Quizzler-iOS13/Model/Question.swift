//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by Kartikeya Chauhan on 17/09/20.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import Foundation

struct Question {
    let text: String
    var answers: [String] = []
    let correct: String
    
    init(q: String, a: [String], correctAnswer: String) {
        text = q
        answers.append(contentsOf: a)
        correct = correctAnswer
    }
}
