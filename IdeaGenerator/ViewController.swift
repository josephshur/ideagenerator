//
//  ViewController.swift
//  IdeaGenerator
//
//  Created by Joseph Shur on 1/29/20.
//  Copyright © 2020 Joseph Shur. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let answers = ["Two Story", "Three Story", "Five Bed", "Four Bathroom", "Studio", "Five Star", "Single Floor", "Large", "Small"]
    
    let answerstwo = ["Home", "Apartment", "Hotel", "Mansion", "House", "Neighborhood", "Complex", "Residence", "Studio Apartment"]
    
    @IBOutlet weak var answerLabel: UILabel!
    @IBOutlet weak var answerLabel2: UILabel!
    @IBOutlet weak var ideaButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func generateAnswer () {
        let randomIndex = Int.random(in: 0..<answers.count)
        
        answerLabel.text = answers[randomIndex]
    }
    
    func generateAnswer2 () {
        let randomIndex = Int.random(in: 0..<answers.count)
        
        answerLabel2.text = answerstwo[randomIndex]
    }

    @IBAction func ideaButtonTapped(_ sender: Any) {
        generateAnswer()
        generateAnswer2()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent? ) {
        guard motion == .motionShake else { return }
        
        generateAnswer()
        generateAnswer2()
    }
    
}

