//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {
    
    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var zeroPctButton: UIButton!
    @IBOutlet weak var tenPctButton: UIButton!
    @IBOutlet weak var twentyPctButton: UIButton!
    @IBOutlet weak var splitNumberLabel: UILabel!
    
    // Tracker to print the value when the calculate button got pressed.
    //// it's mandatory to select one of the tip options, in order to 'substitute' the value
    var tip = 0.0
    var splitNumber = 0.0
    var billText = "0"
    
    @IBAction func tipChanged(_ sender: UIButton) {
        
        
        zeroPctButton.isSelected = false
        tenPctButton.isSelected = false
        twentyPctButton.isSelected = false
                
        //Make the button that triggered the IBAction selected.
        sender.isSelected = true
        
        // Getting button name and removes the last character.
        var buttonName = sender.currentTitle!
        buttonName.removeLast()
        
        
        // How much tip to apply
        /// Transforming buttonName into a Double and divides by 100 to show decimal places results.
        let buttonNameAsADouble = Double(buttonName)!
        tip = buttonNameAsADouble / 100
            
        
        
        // BILL TEXT FIELD
        billText = billTextField.text!
        billTextField.endEditing(true) /// close the keyboard field when the user stops editing
                
    }
    
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        
        // Increases/decreases the number of people to split the amount.
        splitNumber = sender.value
        splitNumberLabel.text = String(format: "%.f", sender.value)
        
    }
    
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        
        // Transform String into Double
        let doubleBillText = Double(billText)!
        // Adding the % to calculate the total amount
        let adjustedTip = 1 + tip
        
        // CALCULATING BILL
            /// Calculates the total amount
        let addPc = (doubleBillText * adjustedTip)
            /// Total amount for each person
        let totalAmount = String(format: "%.2f", addPc/splitNumber)
        
        
        print("tip: \(tip)")
        print("splitNumber: \(splitNumber.rounded())")
        print("billText: \(billText)")
        print("totalAmount: \(totalAmount)")
    }



}

