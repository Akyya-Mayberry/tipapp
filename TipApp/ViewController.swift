//
//  ViewController.swift
//  TipApp
//
//  Created by hollywoodno on 3/10/17.
//  Copyright © 2017 hollywoodno. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var totalTipTextField: UITextField!
    @IBOutlet weak var tipPercentControl: UISegmentedControl!
    @IBOutlet weak var totalTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Load all user default preferences
        let defaults = UserDefaults.standard
        tipPercentControl.selectedSegmentIndex = defaults.integer(forKey: "defaultTipPercent")
        
        billTextField.textAlignment = .right
        billTextField.becomeFirstResponder()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // Dismiss keyboard when clicking outside bill text field
    @IBAction func onTap(_ sender: UITapGestureRecognizer) {
        view.endEditing(true)
    }
    
    
    //MARK: Total bill updates
    
    // Updates tip amount and total each time
    // the value of bill changes
    @IBAction func billUpdate(_ sender: AnyObject) {
        
        let tipPercentRange = [0.15, 0.20, 0.25]
        let bill = Double(billTextField.text!) ?? 0.00
        let calculateTip = tipPercentRange[tipPercentControl.selectedSegmentIndex] * bill
        
        totalTipTextField.text = String(format: "%.2f", calculateTip)
        totalTextField.text = String(format: "%.2f", calculateTip + bill)
        
    }
    
    
    //MARK: Adjust set of tip percentage ranges based on service
    // TODO:
    // Lower and higher will both have their on tipPercentRange
    @IBAction func lowerTipControlRange(_ sender: UIButton) {
    }
    
    @IBAction func raiseTipControlRange(_ sender: UIButton) {
    }
    
    // TODO:
    // If users manually add a tip amount instead of percentage
    // I will calculate tip percentage for user based on provided
    // tip dollar amount. That tip percentage will then be listed
    // as custom.
}

