//
//  ConversionViewController.swift
//  worldTrotter
//
//  Created by Jalaj Punn on 12/23/17.
//  Copyright © 2017 jalapagosInc. All rights reserved.
//

import UIKit

class ConversionViewController: UIViewController {
    
    @IBOutlet var celsiusLabel: UILabel!
    @IBOutlet var textField : UITextField!
    
    @IBAction func fahrenheitFieldEditingChanged(_ textField : UITextField) {
        if let text = textField.text, !text.isEmpty {
            celsiusLabel.text = text
        }
        else {
            celsiusLabel.text = "???"
        }
    }
    
    @IBAction func dismissKeyboard(_ sender: UITapGestureRecognizer) {
        textField.resignFirstResponder()
    }
    
}
