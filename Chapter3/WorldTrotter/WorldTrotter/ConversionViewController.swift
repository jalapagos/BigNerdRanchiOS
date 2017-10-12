//
//  ConversionViewController.swift
//  WorldTrotter
//
//  Created by Jalaj Punn on 10/10/17.
//  Copyright © 2017 Big Nerd Ranch. All rights reserved.
//

import UIKit

class ConversionViewController: UIViewController {
    
    @IBOutlet var celsiusLabel: UILabel!
    @IBOutlet var textField: UITextField!
    
    @IBAction func dismissKeyboard(_ sender: UITapGestureRecognizer) {
        textField.resignFirstResponder()
    }
    
    @IBAction func fahrenheitFieldEditingChanged(textField: UITextField) {
        
        if let text = textField.text, !text.isEmpty {
            celsiusLabel.text = text
        }
        else {
            celsiusLabel.text = "???"
        }

    }
}
