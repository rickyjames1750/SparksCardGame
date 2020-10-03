//
//  ViewController.swift
//  SparksCardGame
//
//  Created by Ricky Sparks on 10/3/20.
//  Copyright © 2020 Ricky J. Sparks. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var rightImageView: UIImageView!
    
    @IBOutlet weak var leftImageView: UIImageView!
    
    @IBOutlet weak var leftScoreLabel: UILabel!
    
    @IBOutlet weak var rightScoreLabel: UILabel!
    
    var leftScore = 0
    var rightScore = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

    
    @IBAction func dealTapped(_ sender: Any) {
        // Randomize some numbers
        let leftNumber = Int.random(in: 2...14)
        let rightNumber = Int.random(in: 2...14)
        
        // Update the image views
        leftImageView.image = UIImage(named: "card\(leftNumber)")
        rightImageView.image = UIImage(named: "card\(rightNumber)")
        
        // Compare the random numbers
        if leftNumber > rightNumber {
            // Left side wins!
            leftScore += 1
            leftScoreLabel.text = String(leftScore)
            
            rightScore += 1
            rightScoreLabel.text = String(rightScore)
        }
        else if leftNumber < rightNumber {
            // Right side wins!
        }
         else {
            // Tie
        }
    }
    
}
