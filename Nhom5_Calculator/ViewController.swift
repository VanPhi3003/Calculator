//
//  ViewController.swift
//  Nhom5_Calculator
//
//  Created by cntt17 on 4/22/17.
//  Copyright © 2017 cntt17. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var numberOnScreen:Double = 0;
    var previousNlumber:Double = 0;
    var performingMath = false
    var operation = 0;
    
    @IBOutlet weak var Lable: UILabel!
    
    @IBAction func numbers(_ sender: UIButton) {
        if performingMath == true
        {
            Lable.text = String(sender.tag-1)
            numberOnScreen = Double(Lable.text!)!
            performingMath = false
        }
        
        else
        {
            Lable.text = Lable.text! + String(sender.tag-1)
            numberOnScreen = Double(Lable.text!)!

        }
    }
    
    @IBAction func Buttons(_ sender: UIButton) {
        if Lable.text != "" && sender.tag != 11 && sender.tag != 16 && sender.tag != 17 && sender.tag != 18
        {
            previousNlumber = Double(Lable.text!)!
            if sender.tag == 12
            {
                Lable.text = "/";
            }
            else if sender.tag == 13
            {
                Lable.text = "x";
            }
            else if sender.tag == 14
            {
                Lable.text = "-";
            }
            else if sender.tag == 15
            {
                Lable.text = "+";
            }
            operation = sender.tag
            performingMath = true;
        }
        else if sender.tag == 16
        {
            if operation == 12
            {
                Lable.text = String(previousNlumber / numberOnScreen)
            }
            else if operation == 13
            {
                Lable.text = String(previousNlumber * numberOnScreen)
            }
           else if operation == 14
            {
                Lable.text = String(previousNlumber - numberOnScreen)
            }
            else if operation == 15
            {
                Lable.text = String(previousNlumber + numberOnScreen)
            }
        }
        else if sender.tag == 11
        {
            Lable.text = ""
            previousNlumber = 0;
            numberOnScreen = 0;
            operation = 0;
        }
               else if sender.tag == 18
        {
            Lable.text = String(numberOnScreen * -1)
        }
        if sender.tag == 17
        {
            numberOnScreen = Double(Lable.text!)!
            Lable.text = String(numberOnScreen/100)
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

