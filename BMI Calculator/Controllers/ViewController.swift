//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //UI elements
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    
    
    //Run onetime on start up
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    //function for height slider
    @IBAction func heightSliderChanged(_ sender: UISlider) {
        
        //Round to two decimal place and assign to height label
        heightLabel.text = String(format: "%.2fm", sender.value)
        
    }
    
    //function for weight slider
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        
        //Round to whole number and assign to weight label
        weightLabel.text = String(format: "%.0fKg", sender.value)
    }
    
    //Calculate button function
    @IBAction func CalculatePressed(_ sender: UIButton) {
        
        //init heightslider
        let height = heightSlider.value
        
        //init weightslider
        let weight = weightSlider.value
        
        //Formula to calculate BMI
        let BMI = String(format: "%.2f", weight/pow(height, 2))
        
     
        
        //Show second view controller
        let secondVC = SecondViewController()
        
        //Assign bmi value to second vc
        secondVC.bmiValue = BMI
        
        //Open second view
        self.present(secondVC, animated: true, completion: nil)
    }
}

