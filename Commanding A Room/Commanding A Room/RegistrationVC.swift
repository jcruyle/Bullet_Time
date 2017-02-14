//
//  RegistrationVC.swift
//  Commanding A Room
//
//  Created by Jessica Saputo on 1/29/17.
//  Copyright © 2017 JCAPPS. All rights reserved.
//

import UIKit

class RegistrationVC: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var clasIDPicker: UIPickerView!
    @IBOutlet weak var clasIDPickerBtn: UIButton!
    @IBOutlet weak var rolePickerBtn: UIButton!
    @IBOutlet weak var rolePicker: UIPickerView!
    @IBOutlet weak var BBanfield: UITextField!
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var userIDTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var confirmPasswordTextField: UITextField!
    
    let clasID = ["Test-001", "Test-002", "Test-003"]
    let role = ["Student", "Instructor"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        clasIDPicker.dataSource = self
        clasIDPicker.delegate = self
        rolePicker.dataSource = self
        rolePicker.delegate = self
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func clasIDPickerBtnPressed(_ sender: Any) {
        clasIDPicker.isHidden = false
        rolePickerBtn.isHidden = true
    }
    
    @IBAction func rolePickerBtnPressed(_ sender: Any) {
        rolePicker.isHidden = false
        BBanfield.isHidden = true
        
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        var countrows : Int = clasID.count
        if pickerView == rolePicker {
            
        countrows = role.count
        }
        
        return countrows
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if pickerView == clasIDPicker {
            
            let titlerow = clasID[row]
            
                return titlerow

        }
        
        else if pickerView == rolePicker{
            
            let titlerow = role[row]
            
            return titlerow
        }
        
        return ""
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if pickerView == clasIDPicker {
            clasIDPickerBtn.setTitle(clasID[row], for: UIControlState.normal)
            clasIDPicker.isHidden = true
            rolePickerBtn.isHidden = false
            
        }
    
        else if pickerView == rolePicker {
            rolePickerBtn.setTitle(role[row], for: UIControlState.normal)
            rolePicker.isHidden = true
            BBanfield.isHidden = false
        }
    }
    
    @IBAction func alreadyRegisteredBtnPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
  
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
