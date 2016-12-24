//
//  ViewController.swift
//  Miracle Pill
//
//  Created by Drago on 12/15/16.
//  Copyright © 2016 Novotek. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

   
    @IBOutlet weak var stateBtnPicker: UIButton!
    @IBOutlet weak var statePicker: UIPickerView!
    @IBOutlet weak var countryLabel: UILabel!
    @IBOutlet weak var countryText: UITextField!
    @IBOutlet weak var zipCodeLabel: UILabel!
    @IBOutlet weak var zipCodeText: UITextField!
    @IBOutlet weak var buyNowBtn: UIButton!
    @IBOutlet weak var successView: UIImageView!
    
    let states = ["Alaska", "Alabama", "California", "New Yourk", "Michigan", "Hawai"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        statePicker.dataSource = self
        statePicker.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func stateBtnPressed(_ sender: Any) {
        countryLabel.isHidden = true
        countryText.isHidden = true
        zipCodeLabel.isHidden = true
        zipCodeText.isHidden = true
        buyNowBtn.isHidden = true
        statePicker.isHidden = false
    }
    
    
    
    // returns the number of 'columns' to display.
    @available(iOS 2.0, *)
    public func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    
    // returns the # of rows in each component..
    @available(iOS 2.0, *)
    public func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        stateBtnPicker.setTitle(states[row], for: UIControlState.normal)
        statePicker.isHidden = true
        countryLabel.isHidden = false
        countryText.isHidden = false
        zipCodeLabel.isHidden = false
        zipCodeText.isHidden = false
        buyNowBtn.isHidden = false
    }
    
    @IBAction func buyNowBtnPressed(_ sender: Any) {
        successView.isHidden = false
    }
    

}

