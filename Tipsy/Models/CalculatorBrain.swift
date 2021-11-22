//
//  CalculatorBrain.swift
//  Tipsy
//
//  Created by Dessana Santos on 19/11/21.
//  Copyright © 2021 The App Brewery. All rights reserved.
//

import UIKit


struct CalculatorBrain {
    
    var bill: Bill?

    
    func getTotalAmount() -> String {
        
        return bill?.totalAmount ?? "0"
        
    }
    
    func numberOfPeople() -> String {
        return bill?.numberPeople ?? "0"
            
    }
        
    
    func getPercentage() -> String {
        return bill?.percentage ?? "0"
        
    }
        
    mutating func calculateBill(tip: Double, splitNumber: String, billText: String) {

        // Transform String into Double
        let doubleBillText = Double(billText)!
        // Adding the % to calculate the total amount
        let adjustedTip = 1 + tip

        
        // CALCULATING BILL
            /// Calculates the total amount
        let addPc = Double(doubleBillText * adjustedTip)
            /// Total amount for each person
        let totalAmount = String(format: "%.2f", addPc/Double(splitNumber)!)

        
        let percentage = String(format: "%.f", tip*100)
        let numberPeople = splitNumber
        
        bill = Bill(totalAmount: totalAmount, percentage: percentage, numberPeople: numberPeople)

    }

}

