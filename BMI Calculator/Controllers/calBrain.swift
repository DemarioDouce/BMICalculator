//
//  calBrain.swift
//  BMI Calculator
//
//  Created by Demario Douce on 2020-05-21.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

//Creation of struct.
struct calBrain {
    
    //Global variable
    var bmiValue: BMI?
    
    //Formula to calculate BMI
    mutating func calBMI(height: Float, weight: Float) {
        
        
        let bmiVal =  weight / (height * height)
        
        if bmiVal < 18.5{
            
            bmiValue = BMI(value: bmiVal, advice: "Eat more pies", color: UIColor.blue)
            
        } else if bmiVal <  24.9{
           bmiValue = BMI(value: bmiVal, advice: "Fit", color: UIColor.green)
        }else {
            
            bmiValue = BMI(value: bmiVal, advice: "Gym", color: UIColor.red)
        }
        
        
        
        
    }
    
    //get the value of the bmiValue variable
    func getBMIVal() -> String {
        
               let bmiTo1DecimalPlace = String(format: "%.1f", bmiValue?.value ?? 0.0)
         return bmiTo1DecimalPlace
        
    }
    
    //get the value of the advice
    func getAdvice() ->  String {
        
        return bmiValue?.advice ?? "No advice"
    }
    
    //get the value of the color
    func getColor() -> UIColor {
        return bmiValue?.color ?? .orange
    }
    
}
