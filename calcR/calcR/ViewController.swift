//
//  ViewController.swift
//  calcR
//
//  Created by admin on 12/18/18.
//  Copyright © 2018 admin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var billfield: UITextField!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func Tap_ASAP(_ sender: AnyObject) {
        view.endEditing(true)
    }
    
    @IBAction func calc_tip(_ sender: AnyObject) {
        
        let tip_percentage = [0.15, 0.20, 0.25]
        let bill = Double(billfield.text!) ?? 0
        let tip = bill * tip_percentage[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
    
    
    
}

