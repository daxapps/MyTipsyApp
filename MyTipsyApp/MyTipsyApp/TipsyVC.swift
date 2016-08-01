//
//  ViewController.swift
//  MyTipsyApp
//
//  Created by Jason Crawford on 7/30/16.
//  Copyright © 2016 Dax Apps. All rights reserved.
//

import UIKit

class TipsyVC: UIViewController {
    
    //MARK: - @IBOutlets
    
    @IBOutlet weak var tipsyTitleView: UIView!
    @IBOutlet weak var tipsyTitleLbl: UILabel!
    @IBOutlet weak var billAmountTF: UITextField!
    @IBOutlet weak var tipPercentLbl: UILabel!
    @IBOutlet weak var tipPercentSlider: UISlider!
    @IBOutlet weak var tipAmountLbl: UILabel!
    @IBOutlet weak var totalAmountLbl: UILabel!
    
    @IBOutlet weak var splitAmountLbl: UILabel!
    @IBOutlet weak var splitAmountSlider: UISlider!
    @IBOutlet weak var splitTotalAmountLbl: UILabel!
    // MARK: - @Properties
    
    var tipCalc = TipCalc(billAmount: 0.0, tipPercent: 0.0)
    var splitCalc = TipCalc(splitAmount: 0.0)
    
    // MARK: - Initialize Views

    override func viewDidLoad() {
        super.viewDidLoad()
        
       tipPercentValue()
    }

    // MARK: - @IBActions

    @IBAction func billAmountChanges(_ sender: AnyObject) {
        calcTip()
    }
    
    @IBAction func tipPercentChanges(_ sender: AnyObject) {
        tipPercentValue()
        calcTip()
    }
    @IBAction func splitNumberChanges(_ sender: AnyObject) {
        
    }

    
    // MARK: - Functions
    
    func calcTip() {
        tipCalc.tipPercent = Double(tipPercentSlider.value)
        tipCalc.billAmount = ((billAmountTF.text)! as NSString).doubleValue
        tipCalc.calculateTip()
        updateUI()
        
    }
    
    func calcSplit() {
        splitCalc.splitAmount = Double(splitAmountSlider.value)
//        splitCalc.totalAmount = ((totalAmountLbl.value)! as NSString).doubleValue
        splitCalc.calculateSplit()
        updateUI()
    }
    
    func updateUI() {
        tipAmountLbl.text = String(format: "$%0.2f", tipCalc.tipAmount)
        totalAmountLbl.text = String(format: "$%0.2f", tipCalc.totalAmount)
        splitTotalAmountLbl.text = String(format: "$%0.2f", tipCalc.totalSplitAmount)
    }
    
    func tipPercentValue() {
        tipPercentLbl.text = "Tip: \(Int(tipPercentSlider.value * 100))%"
    }

}







