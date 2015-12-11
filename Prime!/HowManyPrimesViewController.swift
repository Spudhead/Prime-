//
//  HowManyPrimesViewController.swift
//  Prime!
//
//  Created by Glenn Hancock on 11/15/15.
//  Copyright © 2015 SpudHead. All rights reserved.
//

import UIKit

class HowManyPrimesViewController: UIViewController {
    
    @IBOutlet weak var MainTextView: UITextView!
    @IBOutlet weak var RangeTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func Button(sender: AnyObject) {

        var number = 1
        var count = 1
 
        if let range = Int(RangeTextField.text!) {
 
            MainTextView.text = ""
            while count <= (range) {
                number++
                
                //set the flag to true initially
                var prime = true
                
                for var i = 2; i <= number / 2 ; i += 1 {
                    
                    //even division of a number thats not 1 or the number itself = not a prime number
                    if number % i == 0 {
                        prime = false
                        break
                    }
                }
                
                if prime == true {
                    print(number, terminator: " ")
                    MainTextView.text = MainTextView.text + "\(number) "
                    count++
                }
            }
        } else {
            MainTextView.text = "Please enter a positive number."
        }
    }
}