//
//  SettingsViewController.swift
//  TipApp
//
//  Created by hollywoodno on 3/11/17.
//  Copyright © 2017 hollywoodno. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var defaultTipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set user preferences
        
        let defaults = UserDefaults.standard
        let selectedDefaultPercent = defaults.integer(forKey: "defaultTipPercent")
        defaultTipControl.selectedSegmentIndex = selectedDefaultPercent

        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    // Update user default tip preference
    @IBAction func setDefaultTip(_ sender: Any) {
        let defaults = UserDefaults.standard
        let selectedDefault = defaultTipControl.selectedSegmentIndex
        defaults.set(selectedDefault, forKey: "defaultTipPercent")
        defaults.synchronize()
    }
    
    // Todo:
    // Add light and dark theme functionality
    @IBAction func setDefaultTheme(_ sender: Any) {
    }
    

}
