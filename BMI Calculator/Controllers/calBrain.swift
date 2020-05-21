//
//  calBrain.swift
//  BMI Calculator
//
//  Created by Demario Douce on 2020-05-21.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import Foundation

//Creation of struct.
struct calBrain {

    //Global variable
    var bmiValue = "0.0"
    
    //Formula to calculate BMI
    mutating func calBMI(height: Float, weight: Float) {
          
        bmiValue =  String(format: "%.2f", weight/pow(height, 2))
    }
    
    //get the value of the bmiValue variable
    func getBMIVal() -> String {
        
        return bmiValue
    }
    
}
