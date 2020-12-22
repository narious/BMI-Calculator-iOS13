//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {

    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    var bmiValue: String?
    var calculatorBrain = CalculatorBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heightSliderChanged(_ sender: UISlider) {
        heightLabel.text = String(format: "%0.2fm", sender.value)
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        weightLabel.text = String(format:"%0.0fkg", sender.value)
    }
    
    @IBAction func calculateButtonPressed(_ sender: UIButton) {
        assert(heightSlider.value != 0, "Height slider set to 0")
        calculatorBrain.calculateBmi(height: heightSlider.value, weight: weightSlider.value);
        self.performSegue(withIdentifier: "goToResult", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "goToResult" ) {
            let destinationVC = segue.destination as! ResultsViewController // we force down cast it
            destinationVC.bmiValue = calculatorBrain.getBMValue()
            destinationVC.advice = calculatorBrain.getAdvice()
            destinationVC.backgroundColor = calculatorBrain.getColor()
        }
    }
    
}

