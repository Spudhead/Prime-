//
//  HowManyFibonacciViewController.swift
//  Prime!
//
//  Created by Glenn Hancock on 11/15/15.
//  Copyright © 2015 SpudHead. All rights reserved.
//

import UIKit

class HowManyFibonacciViewController: UIViewController {
    
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
        
        let range = Int(RangeTextField.text!)
        
            var number1 = 1
            var number2 = 1
            
            for _ in 1 ... range! / 2 {
                
                number1 += number2
                number2 += number1
                MainTextView.text = MainTextView.text + "\(number1) \(number2) "
                
            }
        }
        
     }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */


