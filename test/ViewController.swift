//
//  ViewController.swift
//  test
//
//  Created by Reese Crowell on 1/14/20.
//  Copyright © 2020 ReeseCrowell. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipLabel: UILabel!
    
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var billField: UITextField!
    
    @IBOutlet weak var tipControl: UISlider!
    @IBOutlet weak var colorBar: UIView!
    
    @IBOutlet weak var tipPercent: UILabel!
    
    @IBOutlet weak var totalBox: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        colorBar.layer.cornerRadius = 15
        totalBox.layer.cornerRadius = 15
    }
    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    
    @IBAction func calculateTip(_ sender: Any) {
        let bill = Double(billField.text!) ?? 0
        
        let tipPercentage = (0.05 * round(tipControl.value))
    tipControl.setValue(roundf(tipControl.value), animated: false)
        
        if (tipPercentage <= 0.1) {
            colorBar.backgroundColor = .systemRed
        } else if (tipPercentage < 0.2) {
            colorBar.backgroundColor = .systemYellow
        } else {
            colorBar.backgroundColor = .systemGreen
        }
        
        let tip = bill * Double(tipPercentage)
        
        let total = bill + tip
        tipPercent.text = String(format: "%.0f%%", (tipPercentage * 100))
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
    

    
    
    
    
}

