//
//  JokeViewController.swift
//  Joke Bank
//
//  Created by Aileen Bull on 2/2/20.
//  Copyright © 2020 Aileen Bull. All rights reserved.
//

import UIKit

class JokeViewController: UIViewController {
 
    var joke : Joke? = nil
    
    
    @IBOutlet weak var jokeQuestion: UILabel!
    
    
    @IBOutlet weak var jokeAnswer: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let joke = joke {
         title = joke.title!
        
         jokeQuestion.text = "Q: \(joke.question!)"
            
         jokeAnswer.text = "A: \(joke.answer!)"
        }
      
    }
}
