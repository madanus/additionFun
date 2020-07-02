//
//  ViewController.swift
//  Addition Fun
//
//  Created by Madan on 02/07/20.
//  Copyright © 2020 Bubbon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var digit1: UILabel!
    @IBOutlet weak var digit2: UILabel!
    
    @IBOutlet var answerButtons: [UIButton]!
    
    var d1 = 0, d2 = 0
    var sum = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        newSum()
    }

    func newSum() {
        d1 = Int.random(in: 0...9)
        d2 = Int.random(in: 0...9)
        sum = d1 + d2
        
        // Fill the question labels (digits)
        digit1.text = String(d1)
        digit2.text = String(d2)
        
        // Fill the answer Buttons
        let correctAnswerButtonNumber = Int.random(in:0...2)
        for (index, button) in answerButtons.enumerated() {
            if (correctAnswerButtonNumber == index) {
                button.setTitle(String(sum), for: .normal)            }
            else {
                let randomOption = Int.random(in: 0...19)
                button.setTitle(String(randomOption), for: .normal)
            }
        }
    }
    
    @IBAction func ontButtonClick(_ sender: UIButton) {
        print("oneButtonClick:", sender.titleLabel!.text!)
        let answerChosen = Int(sender.titleLabel!.text!)
        
        if (answerChosen == sum) {
            print("Correct")
        }
        else {
            print("Wrong")
        }
        
        newSum()
    }
    
}

