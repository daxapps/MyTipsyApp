//
//  TipCalc.swift
//  MyTipsyApp
//
//  Created by Jason Crawford on 7/30/16.
//  Copyright © 2016 Dax Apps. All rights reserved.
//

import Foundation

class TipCalc {
    
    private var _billAmount = 0.0
    private var _tipPercent = 0.0
    private var _tipAmount = 0.0
    private var _totalAmount = 0.0
    
    private var _splitAmount = 0.0
    private var _totalSplitAmount = 0.0
    
    var billAmount: Double {
        get {
            return _billAmount
        } set {
            _billAmount = newValue
        }
    }
    
    var tipPercent: Double {
        get {
            return _tipPercent
        } set {
            _tipPercent = newValue
        }
    }
    
    var splitAmount: Double {
        get {
            return _splitAmount
        } set {
            _splitAmount = newValue
        }
    }
    
    var tipAmount: Double {
        return _tipAmount
    }
    
    var totalAmount: Double {
        return _totalAmount
    }
    
    var totalSplitAmount: Double {
        return _totalSplitAmount
    }
    
    init(billAmount: Double, tipPercent: Double) {
        self._billAmount = billAmount
        self.tipPercent = tipPercent
    }
    
    init(splitAmount: Double) {
        self.splitAmount = splitAmount
    }
    
    func calculateTip() {
        _tipAmount = billAmount * tipPercent
        _totalAmount = tipAmount + billAmount
        
    }
    
    func calculateSplit() {
        _totalSplitAmount = totalAmount / splitAmount
    }
    
}








