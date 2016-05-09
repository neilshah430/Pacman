//
//  ViewController.swift
//  GuessingGame
//
//  Created by Neil Shah on 5/1/16.
//  Copyright © 2016 Neil Shah. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var userGuess: UITextField!
    @IBOutlet var result: UILabel!
    @IBAction func buttonPush(sender: AnyObject) {
        
        let random = String(arc4random_uniform(6))
        print(random)
        if (userGuess.text == ""){
            result.text = "Please enter a number"
        }
        else if (userGuess.text == random){
            result.text = "You won!"
        }
        else{
            result.text = "The number was actually " + random
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

