//
//  ViewController.swift
//  Magic8Ball
//
//  Created by Yancey Reid on 9/20/17.
//  Copyright © 2017 Yancey Reid. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ballImageView: UIImageView!
    let ballFaces = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func askButton(_ sender: UIButton) {
        shakeBall()
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        shakeBall()
    }
    
    func shakeBall() {
        ballImageView.image =
            UIImage.init(named: ballFaces[Int(arc4random_uniform(5))])
    }
    
}

