//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Michael on 21/12/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import Foundation
import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    mutating func calculateBmi(height: Float, weight: Float) {
        let bmiValue = weight / pow(height, 2)
        
        self.bmi = BMI(value: bmiValue, advice: self.generateAdvice(bmiVal: bmiValue), color: self.generateColor(bmiVal: bmiValue))
    }
    
    func getBMValue() -> String {
        
        // Also the nil coalescing operator < optional ?? defualtValue >
        
        return String(format: "%.1f",  bmi?.value ?? "0.0")
        
        // Optional binding very common and self explanatory
//        if let safeBMI = self.bmiValue {
//            return String(format: "%.1f", safeBMI)
//        }
        
        // Optional channing
    }
    
    func generateAdvice(bmiVal: Float) -> String {
        return bmiVal < 18.5 ? "Too skinny, eat more!" : bmiVal < 24.9 ? "Health weight!" : "Too fat, excercise more!"
    }
    
    func generateColor(bmiVal: Float) -> UIColor {
        return bmiVal < 18.5 ? #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1) : bmiVal < 24.9 ? #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1) : #colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1)
    }
    
    func getAdvice() -> String {
        return self.bmi?.advice ?? "Enter your bmi value!!"
    }
    
    func getColor() -> UIColor {
        return self.bmi?.color ?? #colorLiteral(red: 1, green: 0.7514423132, blue: 0, alpha: 1)
    }
    
    
}
