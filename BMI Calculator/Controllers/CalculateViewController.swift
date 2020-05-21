//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    
//    //variable
//    var bmiValue = "0.0"
    
    //init calBrain
    var calBrainRef = calBrain()
    
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
        
        //Calling the calBMI func
        calBrainRef.calBMI(height: height, weight: weight)
        
        //Open segue
        self.performSegue(withIdentifier: "goToResult", sender: self)
        
        //
        
        //        //Show second view controller
        //        let HardCV = HardCodedView()
        //
        //        //Assign bmi value to second vc
        //        HardCV.bmiValue = BMI
        //
        //        //Open second view
        //        self.present(HardCV, animated: true, completion: nil)
    }
    
    //Notifies the view controller that a segue is about to be performed.
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult"{
            
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue  = calBrainRef.getBMIVal()
            destinationVC.advice = calBrainRef.getAdvice()
            destinationVC.color = calBrainRef.getColor()
        }
    }
}

