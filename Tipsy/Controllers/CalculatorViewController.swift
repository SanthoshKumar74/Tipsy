//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {
    var tipPct: Float = 0.0
    var totalBill: Float = 0.0
    var noOfPeople: Int = 0

    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var zeropctButton: UIButton!
    @IBOutlet weak var tenpctButton: UIButton!
    @IBOutlet weak var twentypctButton: UIButton!
    @IBOutlet weak var splitNumberLabel: UILabel!
    @IBAction func tipChanged(_ sender: UIButton) {
        billTextField.endEditing(true)
    
        switch sender{
        case zeropctButton:
            sender.isSelected = true
            twentypctButton.isSelected = false
            tenpctButton.isSelected = false
            tipPct = 0.0
        case tenpctButton:
            sender.isSelected = true
            zeropctButton.isSelected = false
            twentypctButton.isSelected = false
            tipPct = 0.1
        default:
            sender.isSelected = true
            zeropctButton.isSelected = false
            tenpctButton.isSelected = false
            tipPct = 0.2
        }
    }
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        splitNumberLabel.text = String(Int(sender.value))
        noOfPeople = Int(sender.value)
        
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
    
            totalBill = Float(billTextField.text ?? "0.0")!
        print(totalBill)
         totalBill  = (totalBill + ( totalBill * tipPct)) / Float(noOfPeople)
       
        
        performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let resultVC = segue.destination as! ResultViewController
        resultVC.noOfPeople = String(noOfPeople)
        resultVC.totalBill = String(totalBill)
        resultVC.tipPercent = String(Int(tipPct * 100))
        
        
    }
    
            

        
       
}

