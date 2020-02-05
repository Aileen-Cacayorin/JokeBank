//
//  JokeTableViewController.swift
//  Joke Bank
//
//  Created by Aileen Bull on 2/1/20.
//  Copyright © 2020 Aileen Bull. All rights reserved.
//

import UIKit

class JokeTableViewController: UITableViewController {
    
    var jokes : [Joke] = []
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let  joke1 = Joke(title: "Can", question: "Why did the can crusher quit his job", answer: "Because it was soda depressing" )
        
        let joke2 = Joke(title: "Chicken", question: "Why did the chicken cross the road?", answer: "To get to the other side!" )
        
        let joke3 = Joke(title: "Javascript", question: "How do you comfort a JavaScript bug?", answer: "You console it.")
        
        let joke4 = Joke(title: "Dev", question: "Why did the developer go broke??", answer: "Because he used up all his cache.")
        
        jokes = [joke1, joke2, joke3, joke4]
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return jokes.count
    }

 
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()

            
        cell.textLabel?.text = jokes[indexPath.row].title
 

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
        
        let selectedJoke = jokes[indexPath.row]
        performSegue(withIdentifier: "moveToJokeDef", sender: selectedJoke)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let jokeVC = segue.destination as?
            JokeViewController {
                if let selectedJoke = sender as? Joke {
                    jokeVC.joke = selectedJoke
                }
            }
    }
}
