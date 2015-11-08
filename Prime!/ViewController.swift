//
//  ViewController.swift
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
        let range = (rangeTextField.text)
        MainTextView.text = ""
        while number < Int(range!) {
         number++
            if number == 1 {
                
                print(number)
                
            } else {
                
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
        }
    }
}