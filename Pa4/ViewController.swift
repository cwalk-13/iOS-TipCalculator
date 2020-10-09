//
//  ViewController.swift
//  Pa4
//
//  Created by Walker, Charles Milton on 10/8/20.
//  Copyright © 2020 Walker, Charles Milton. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  var tc = TipCalculator()
    @IBOutlet weak var billAmount: UITextField!
    @IBOutlet weak var tipPercent: UITextField!
    @IBOutlet weak var textView: UITextView!
    
    @IBAction func Calculate(_ sender: Any) {
        textView.text = String(tc.CalcTip())
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

