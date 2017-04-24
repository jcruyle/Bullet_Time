//
//  Landing.swift
//  Commanding A Room
//
//  Created by Jessica Saputo on 1/22/17.
//  Copyright © 2017 JCAPPS. All rights reserved.
//

import UIKit

class LandingVC: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var userIDTxtField: UITextField!
    @IBOutlet weak var passwordTxtField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.userIDTxtField.delegate = self
        self.passwordTxtField.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //Hides keyboard when user touches outside of the keyboard. Applies to keyboard, so no individual txtField call is needed.
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    //Hides keyboard on return key press. Applies to txtField, so all individual txtFields will need to be called.
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        userIDTxtField.resignFirstResponder()
        passwordTxtField.resignFirstResponder()
        return (true)
    }


}

