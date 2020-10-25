//
//  TipCalculator.swift
//  pa4
//  This program calculates the tip and total bill given by user
//  Created by Walker, Charles Milton on 10/12/20.
//  Copyright © 2020 Walker, Charles Milton. All rights reserved.
//

import Foundation
class TipCalculator {
    var billAmount: Double
    var tipPercent: Double
    init(bill: Double, tipPercent: Double) {
        self.billAmount = bill
        self.tipPercent = tipPercent
    }
    
    func CalcTip() -> Double {
        return billAmount * tipPercent/100
    }
    func CalcBillTotal() -> Double {
        return billAmount * (tipPercent + 100)/100
    }
    func setVals (bill: Double, tipPercent: Double) {
        self.billAmount = bill
        self.tipPercent = tipPercent
    }
}
