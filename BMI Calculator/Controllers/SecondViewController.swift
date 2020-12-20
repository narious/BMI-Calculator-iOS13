//
//  SecondViewController.swift
//  BMI Calculator
//
//  Created by Michael on 19/12/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import Foundation


import Foundation
import UIKit

class SecondViewController : UIViewController {

    
    var bmi = "0.0";
    
    override func viewDidLoad() {
        super.viewDidLoad();
        
        // Swift knows it is a type .red
        view.backgroundColor = .red
        
        // Creating labels programmatically
        let label = UILabel();
        label.text = bmi
        // Top left corner is 0,0
        label.frame = CGRect(x: 0, y: 0, width: 100, height: 50)
        
        // All view controllers have a view container, also labels are views
        view.addSubview(label)
    }
}
