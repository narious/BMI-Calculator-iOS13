//
//  CalculateViewController.swift
//  BMI Calculator
//
//  Created by Michael on 17/12/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import Foundation
import UIKit

class ResultsViewController : UIViewController {
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var commentLabel: UILabel!
    @IBOutlet weak var background: UIImageView!
    
    var bmiValue : String?
    var advice: String?
    var backgroundColor : UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad();
        resultLabel.text = self.bmiValue
        commentLabel.text = self.advice
        background.backgroundColor = backgroundColor
        
    }
    @IBAction func recalculateButtonPressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
}
