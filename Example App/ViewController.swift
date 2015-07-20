//
//  ViewController.swift
//  Example App
//
//  Created by Chinmay Deshpande on 7/20/15.
//  Copyright (c) 2015 Practice. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var outputLabel: UILabel!
    
    @IBOutlet var discountInput: UITextField!
    @IBOutlet var textInput: UITextField!
    @IBOutlet var button: UIButton!
    
    @IBOutlet var resultLabel: UILabel!
    @IBAction func button(sender: AnyObject) {
        
       var enteredValue = textInput.text.toInt()
        
        var discountValue = discountInput.text.toInt()
        
        if enteredValue != nil && discountValue != nil {
            
        
        var temp = (enteredValue! * discountValue!)/100
        
        var yearlyspend = enteredValue!-temp
        
        var monthlySpend = yearlyspend/12
        
        resultLabel.text = "You should spend $ \(monthlySpend) monthly"
        }
        
            
        else {
        
            resultLabel.text = "Please enter both annual package and % saving"
            
        }
        
        
        
        
    
        
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
       // button.frame=CGRectMake(80, 380,160, 30)
        
        println("hey")
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

