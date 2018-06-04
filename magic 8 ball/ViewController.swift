//
//  ViewController.swift
//  magic 8 ball
//
//  Created by Igor Vuleta on 11/02/2018.
//  Copyright © 2018 Igor Vuleta. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let imageArray = ["ball1", "ball2", "ball3", "ball4", "ball5", "ball6"]
    var randomBallNumber : Int = 0

    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        newBallImage()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
   

    @IBAction func askButtonPressed(_ sender: UIButton) {
        newBallImage()
    }
    
    func newBallImage() {
        randomBallNumber = Int(arc4random_uniform(4))
        imageView.image = UIImage(named: imageArray[randomBallNumber])
    }
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?){
        newBallImage()
    }
}

