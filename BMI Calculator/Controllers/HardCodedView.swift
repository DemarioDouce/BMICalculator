//
//  SecondViewController.swift
//  BMI Calculator
//
//  Created by Demario Douce on 2020-05-19.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

class HardCodedView: UIViewController {
    
    var bmiValue = "0.0"
    //Run onetime on start up
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //background of view
        view.backgroundColor = UIColor.red
        
        //Create new label
        let label = UILabel()
        label.text = bmiValue
        
        //position of label
        label.frame = CGRect(x: 0, y: 0, width: 100, height: 50)
        
        //add to a subview
        view.addSubview(label)
    }
    
}
