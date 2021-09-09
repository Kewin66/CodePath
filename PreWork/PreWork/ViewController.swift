//
//  ViewController.swift
//  PreWork
//
//  Created by Kewin Srinath on 9/9/21.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var billamounttextfield: UITextField!
    @IBOutlet weak var TipAmountLabel: UILabel!
    @IBOutlet weak var TipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func CalculateTip(_ sender: Any) {
        let bill = Double(billamounttextfield.text!) ?? 0
        let tipPercentage = [0.15,0.18,0.20]
        
        let tip = bill * tipPercentage[TipControl.selectedSegmentIndex]
        let total = bill + tip
        
        TipAmountLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
    
}

