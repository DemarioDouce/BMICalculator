//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Demario Douce on 2020-05-19.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    //global variable
    var bmiValue:String?
    var color: UIColor?
    var advice: String?
    
    //UI Elements
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bmiLabel.text = bmiValue
        adviceLabel.text = advice
        view.backgroundColor = color
        
    }
    
    
    //Function for recal button
    @IBAction func recalculatePressed(_ sender: UIButton) {
        
        //Close current window
        self.dismiss(animated: true, completion: nil)
    }
    
    
}
