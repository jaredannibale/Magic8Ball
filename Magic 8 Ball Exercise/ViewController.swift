//
//  ViewController.swift
//  Magic 8 Ball Exercise
//
//  Created by Jared Annibale on 1/24/17.
//  Copyright © 2017 Jared Annibale. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var answerLabel: UILabel!
    @IBOutlet weak var showAnswerButton: UIButton!

    var lastIndex = -1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showAnswerButtonPressed(_ sender: Any) {
    
        let answers = ["It is certain.",
                       "It is decidedly so.",
                       "Yes, definitely.",
                       "You may rely on it.",
                       "Outlook good.",
                       "Without a doubt.",
                       "As I see it, yes.",
                       "Yes.",
                       "Most likely.",
                       "Signs point to yes.",
                       "Reply hazy, try again.",
                       "Ask again later.",
                       "Better not tell you now.",
                       "Cannot predict now.",
                       "Concentrate and ask again.",
                       "Don't count on it.",
                       "My reply is no.",
                       "Outlook not so good.",
                       "Very doubtful.",
                       "My sources say no."]

        var randomIndex: Int
        
        repeat {
            randomIndex = Int(arc4random_uniform(UInt32(answers.count)))
        } while randomIndex == lastIndex
        
        lastIndex = randomIndex
        
        answerLabel.text = answers[randomIndex]
        
        
    }
}

