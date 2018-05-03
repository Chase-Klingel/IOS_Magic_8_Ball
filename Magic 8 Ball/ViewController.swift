//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Chase Klingel on 5/2/18.
//  Copyright © 2018 Chase Klingel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var eightBall : UIImageView!
    var randomEightBallIndex     : Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        generateRandomAnswer()
    }
    
    let ballArray = ["ball1", "ball2", "ball3",
                   "ball4", "ball5"]

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func askQuestionPushed(_ sender: UIButton) {
        generateRandomAnswer()
    }
    
    func generateRandomAnswer() {
        randomEightBallIndex = Int(arc4random_uniform(5))
        eightBall.image      = UIImage(named :      ballArray[randomEightBallIndex])
    }
}

