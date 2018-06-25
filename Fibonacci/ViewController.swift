//
//  ViewController.swift
//  Fibonacci
//
//  Created by Adam Moore on 3/17/18.
//  Copyright © 2018 Adam Moore. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var fibonacciInputField: UITextField!
    @IBOutlet weak var fibonacciNumbersLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func getFibonacciNumberButtonPressed(_ sender: UIButton) {
        var fibonacciNumberString = ""
        if let fibonacciNumberOfTimes = Int(fibonacciInputField.text!) {
            if fibonacciNumberOfTimes <= 0 {
                fibonacciNumbersLabel.text = "You have to enter a number GREATER than 0."
            } else {
                let fibonacciArray = fibonacci(numberOfTimes: fibonacciNumberOfTimes)
                for number in fibonacciArray {
                    fibonacciNumberString += "\(number) "
                }
                fibonacciNumbersLabel.text = fibonacciNumberString
            }
        } else {
            fibonacciNumbersLabel.text = "You have to enter a NUMBER greater than 0."
        }
    }
    
}

