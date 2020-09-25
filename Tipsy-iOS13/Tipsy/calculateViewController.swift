//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class calculateViewController: UIViewController {
    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var zeroPctButton: UIButton!
    @IBOutlet weak var tenPctButton: UIButton!
    @IBOutlet weak var twentyPctButton: UIButton!
    @IBOutlet weak var splitNumberLabel: UILabel!
    
    var percentageValue = 0.0
    var splitPeople = 2
    var billTotal = 0.0
    var result = "0.0"

    @IBAction func tipChanged(_ sender: UIButton) {
        zeroPctButton.isSelected = false
        tenPctButton.isSelected = false
        twentyPctButton.isSelected = false
        
        sender.isSelected = true
        
        percentageValue = Double(String(sender.currentTitle!.dropLast()))!/100
        billTextField.endEditing(true)
    }
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        sender.wraps = true
        sender.maximumValue = 100
        splitNumberLabel.text = String(format: "%0.0f", sender.value)
        splitPeople = Int(sender.value)
    }
    @IBAction func calculatePressed(_ sender: UIButton) {
        let bill = billTextField.text!
        if bill != "" {
            billTotal = Double(bill)!
            let calculation = billTotal * (1+percentageValue)/Double(splitPeople)
            result = String(format: "%.2f", calculation)
        }
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultsViewController
            destinationVC.tipPercentage = Int(percentageValue*100)
            destinationVC.numberOfPeople = splitPeople
            destinationVC.result = result
        }
    }
    
}

