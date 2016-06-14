//
//  ViewController.swift
//  tip
//
//  Created by Sarah Zhou on 6/14/16.
//  Copyright © 2016 Sarah Zhou. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var percentControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
    }

    @IBAction func calcTip(sender: AnyObject) {
        
        let tipPercent = [0.15, 0.18, 0.2]
        
        let bill = Double(billField.text!) ?? 0
        // "?? 0" returns nil if the input is not a number
        let tip = bill * tipPercent[percentControl.selectedSegmentIndex]
        let total = bill + tip
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
}

