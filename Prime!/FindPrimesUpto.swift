//
//  FindPrimesUpto.swift
//  Prime!
//
//  Created by Glenn Hancock on 10/26/15.
//  Copyright © 2015 SpudHead. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var MainTextView: UITextView!
    @IBOutlet weak var CalculateButtonItem: UIButton!
    @IBOutlet weak var rangeTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func CalulateButton(sender: UIButton) {
        
        var number = 1
        if let range = Int(rangeTextField.text!) {
            MainTextView.text = ""
            while number < (range) {
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
                    
                }
            }
        } else {
            MainTextView.text = "Please enter a positive number."
        }
    }
}