//
//  ViewController.swift
//  pa4
//  This program is an app that calculates a total bill from a bill amount and tip percent from the user 
//  Created by Walker, Charles Milton on 10/12/20.
//  Copyright © 2020 Walker, Charles Milton. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var tc = TipCalculator(bill: 0, tipPercent: 0)
    let formatter = NumberFormatter()
    let alert = UIAlertController(title: "Error", message: "Invalid Input", preferredStyle: .alert)
    let continueAction = UIAlertAction(title: "Continue", style: .cancel, handler: nil)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        alert.addAction(continueAction)
        formatter.numberStyle = .currency
        formatter.locale = NSLocale(localeIdentifier: "es_US") as Locale
        formatter.usesGroupingSeparator = true
    }
//labels and text fields
    @IBOutlet weak var billAmount: UITextField!
    @IBOutlet weak var tipPercent: UITextField!
    
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalBillLabel: UILabel!
//action that takes user input and calculates using TipCalculator
    @IBAction func calcButtonPressed(_ sender: UIButton) {
        guard let input = billAmount.text, let bill = Double(input), bill > 0 else {
            present(alert, animated: true)
            return
        }
        guard let input2 = tipPercent.text, let tip = Double(input2), tip > 0 else {
            present(alert, animated: true)
            return
        }
        tc.setVals(bill: bill, tipPercent: tip)
        tipLabel.text = formatter.string(from: NSNumber(value: tc.CalcTip()))
        totalBillLabel.text = formatter.string(from: NSNumber(value: tc.CalcBillTotal()))
    }
    
}

