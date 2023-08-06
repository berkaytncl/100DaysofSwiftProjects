//
//  ViewController.swift
//  Project02
//
//  Created by Berkay Tuncel on 5.08.2023.
//

import UIKit

final class ViewController: UIViewController {

    @IBOutlet private var button1: UIButton!
    @IBOutlet private var button2: UIButton!
    @IBOutlet private var button3: UIButton!
    @IBOutlet private var scoreLabel: UILabel!
    
    private var countries = [String]()
    private var score = 0
    private var correctAnswer = 0
    private var askedQuestions = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        countries += ["estonia", "france", "germany", "ireland", "italy", "monaco", "nigeria", "poland", "russia", "spain", "uk", "us"]
        
        button1.layer.borderWidth = 1
        button2.layer.borderWidth = 1
        button3.layer.borderWidth = 1
        
        button1.layer.borderColor = UIColor.lightGray.cgColor
        button2.layer.borderColor = UIColor.lightGray.cgColor
        button3.layer.borderColor = UIColor.lightGray.cgColor
        
        askQuestion()
    }
    
    func askQuestion(action: UIAlertAction! = nil) {
        guard askedQuestions < 10 else {
            gameOver()
            return
        }
        
        countries.shuffle()
        correctAnswer = Int.random(in: 0...2)
        
        button1.setImage(UIImage(named: countries[0]), for: .normal)
        button2.setImage(UIImage(named: countries[1]), for: .normal)
        button3.setImage(UIImage(named: countries[2]), for: .normal)
        
        title = countries[correctAnswer].uppercased()
        
        askedQuestions += 1
    }
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        var title: String
        var message: String
        
        if sender.tag == correctAnswer {
            title = "Correct"
            score += 1
            message = "Your score is \(score)"
        } else {
            title = "Wrong"
            score -= 1
            message = """
            That’s the flag of \(countries[sender.tag].uppercased()),
            Your score is \(score)
            """
        }
        
        let ac = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        ac.addAction(UIAlertAction(title: "Continue", style: .default, handler: askQuestion))
        
        present(ac, animated: true)
        
        scoreLabel.text = "Score: \(score)"
    }
    
    private func gameOver() {
        let ac = UIAlertController(title: "Game Over", message: "Your score is \(score)", preferredStyle: .alert)
        
        ac.addAction(UIAlertAction(title: "Play Again", style: .default, handler: playAgain))
        
        present(ac, animated: true)
    }
    
    private func playAgain(action: UIAlertAction! = nil) {
        score = 0
        askedQuestions = 0
        
        scoreLabel.text = "Score: \(score)"
        
        askQuestion()
    }
}

