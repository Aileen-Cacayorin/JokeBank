//
//  Joke.swift
//  Joke Bank
//
//  Created by Aileen Bull on 2/2/20.
//  Copyright © 2020 Aileen Bull. All rights reserved.
//

import UIKit

class Joke {
    var title: String?
    var question: String?
    var answer: String?
    
    init(title: String, question: String, answer: String) {
        self.title = title
        self.question = question
        self.answer = answer
    }
}
