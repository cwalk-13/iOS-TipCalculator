//
//  TipCalcualtor.swift
//  Pa4
//
//  Created by Walker, Charles Milton on 10/8/20.
//  Copyright © 2020 Walker, Charles Milton. All rights reserved.
//

import Foundation
class TipCalculator {
    var vc = ViewController()
    var tipAmount: Double = 0
    var totalBill: Double = 0
    func CalcTip() -> Double {
        let bill = Double(vc.billAmount.text!)!
        let tip = Double(vc.tipPercent.text!)!
        tipAmount = bill * (tip/100)
        totalBill = bill + tipAmount
        return totalBill
    }
}
