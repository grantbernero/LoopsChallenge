//
//  ViewController.swift
//  LoopsChallenge
//
//  Created by Brian Wilson on 6/10/16.
//  Copyright (c) 2015 MobileMakers. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var textField2: UITextField!
    @IBOutlet weak var textField3: UITextField!
    @IBOutlet weak var textField4: UITextField!
    @IBOutlet weak var textField5: UITextField!

    @IBOutlet weak var myTextView: UITextView!

    var values = [String]()
    var output = ""

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    func setValues()
    {
        values = [textField1.text!,textField2.text!,textField3.text!,textField4.text!,textField5.text!]
    }

    func resignFields()
    {
        textField1.resignFirstResponder()
        textField2.resignFirstResponder()
        textField3.resignFirstResponder()
        textField4.resignFirstResponder()
        textField5.resignFirstResponder()
    }

    @IBAction func mvpButtonPressed(_ sender: UIButton)
    {
        resignFields()
        setValues()

        /***************************************************
        * Start Your Code Here For MVP
        ***************************************************/
        for number in values
        {
            output += "\(number) "
        }
        /***************************************************
        * End Your Code Here For MVP
        ***************************************************/
        myTextView.text = output
    }

    @IBAction func stretch1ButtonPressed(_ sender: UIButton) {
        setValues()
        output = ""
        /***************************************************
        * Start Your Code Here For Stretch #1
        ***************************************************/
        
        output += values.first!
        for number in values.dropFirst()
        {
            output += ", \(number)"
        }

        /***************************************************
        * End Your Code Here For Stretch #1
        ***************************************************/
        myTextView.text = output

    }

    @IBAction func stretch2ButtonPressed(_ sender: UIButton) {
        resignFields()
        setValues()
        var maximum = values[0]
        /***************************************************
        * Start Your Code Here For Stretch #2
        ***************************************************/
        
        for number in values
        {
            if(maximum < number)
            {
                maximum = number
            }
        }
        
        /***************************************************
        * End Your Code Here For Stretch #2
        ***************************************************/
        myTextView.text = "After searching the array, \(maximum) is the largest"
    }

    @IBAction func stretch3ButtonPressed(_ sender: UIButton) {
        resignFields()
        setValues()
        var total = 0
        /***************************************************
        * Start Your Code Here For Stretch #3
        ***************************************************/
        
        for number in values
        {
            total += Int(number)!
        }
        
        
        /***************************************************
        * End Your Code Here For Stretch #3
        ***************************************************/
        myTextView.text = "The total of the array is \(total)"
    }

    @IBAction func stretch4ButtonPressed(_ sender: UIButton) {
        resignFields()
        setValues()
        var minimum = values[0]
        var index = 0
        /***************************************************
        * Start Your Code Here For Stretch #4
        ***************************************************/

        for number in values
        {
            if(minimum > number)
            {
                minimum = number
                index = values.index(of: number)!
            }
        }
        
        /***************************************************
        * End Your Code Here For Stretch #4
        ***************************************************/
        myTextView.text =   "After searching the array, we have\n" +
                            "found the minimum is \(minimum) and is\n" +
                            "in position #\(index)"
    }
}

