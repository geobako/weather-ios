//
//  ViewController.swift
//  Clima
//
//  Created by Angela Yu on 01/09/2019.
//  Copyright © 2019 App Brewery. All rights reserved.
//

import UIKit

class WeatherViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var conditionImageView: UIImageView!
    @IBOutlet weak var temperatureLabel: UILabel!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var SearchTextfield: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        SearchTextfield.delegate = self
    }

    @IBAction func SearchPressed(_ sender: UIButton) {
        SearchTextfield.endEditing(true)
        print(SearchTextfield.text!)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        SearchTextfield.endEditing(true)
        print(SearchTextfield.text!)
        
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        SearchTextfield.text = ""
    }
    
}

