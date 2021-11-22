//
//  ResultsViewController.swift
//  Tipsy
//
//  Created by Dessana Santos on 10/11/21.
//  Copyright © 2021 The App Brewery. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    
    var totalAmount: String?
    var numberOfPeople: String?
    var billPercentage: String?
    
    
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var settingsLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        totalLabel.text = totalAmount
        settingsLabel.text = "Split between \(numberOfPeople!) people, with \(billPercentage!)% tip."
        
        
    }
    
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        
        self.dismiss(animated: true, completion: nil)
    }
    
}
