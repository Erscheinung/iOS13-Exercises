//
//  secondViewController.swift
//  BMI Calculator
//
//  Created by Kartikeya Chauhan on 23/09/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

class secondViewController: UIViewController {
    
    var bmiValue = "0.0"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .red
        
        let label = UILabel()
        label.text = bmiValue
        label.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
        view.addSubview(label)
    }
    
}
