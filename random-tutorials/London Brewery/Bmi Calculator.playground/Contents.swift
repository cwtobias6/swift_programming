//: Playground - noun: a place where people can play

import UIKit

func calculateBMI(weight: Double, height: Double) -> String {
    
    let bmi = weight / (height * height)
    
    if bmi >= 25.0 {
        return "Your bmi is \(Double(round(bmi * 100) / 100)) . You are Overweight."
    } else if 18.5 < bmi && bmi < 25 {
                return "Your bmi is \(Double(round(bmi * 100) / 100)). You are Normal Weight."
    } else {
                return "Your bmi is \(Double(round(bmi * 100) / 100)). You are Underweight..."
        
    }
    
}

calculateBMI(weight: 80, height: 2.34)
