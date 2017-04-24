//
//  GiveFeedbackVC.swift
//  Commanding A Room
//
//  Created by Jessica Saputo on 2/18/17.
//  Copyright © 2017 JCAPPS. All rights reserved.
//

import UIKit

class GiveFeedbackVC: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    //Created outlets for all btns to change the title color when selected
    @IBOutlet weak var useTheSpaceBtn: UIButton!
    @IBOutlet weak var paceBtn: UIButton!
    @IBOutlet weak var volumeBtn: UIButton!
    @IBOutlet weak var flowBtn: UIButton!
    @IBOutlet weak var triggerWordsBtn: UIButton!
    @IBOutlet weak var gesturesBtn: UIButton!
    @IBOutlet weak var heldMyInterestBtn: UIButton!
    @IBOutlet weak var toneBtn: UIButton!
    @IBOutlet weak var strongCloseBtn: UIButton!
    @IBOutlet weak var eyeContactBtn: UIButton!
    @IBOutlet weak var timeBtn: UIButton!
    @IBOutlet weak var facialCuesBtn: UIButton!
    @IBOutlet weak var structureBtn: UIButton!
    @IBOutlet weak var strongIntroBtn: UIButton!
    @IBOutlet weak var dictionBtn: UIButton!
    @IBOutlet weak var keptItGumpBtn: UIButton!
    @IBOutlet weak var selectPresenterBtn: UIButton!
    @IBOutlet weak var selectAssignmentBtn: UIButton!
    @IBOutlet weak var topBarView: UIView!
    @IBOutlet weak var performance: UILabel!
    @IBOutlet weak var topStack: UIStackView!
    @IBOutlet weak var middleStack: UIStackView!
    @IBOutlet weak var bottomStack: UIStackView!
    @IBOutlet weak var giveFeedback: UILabel!
    @IBOutlet weak var selectPresenterPicker: UIPickerView!
    @IBOutlet weak var selectAssignmentPicker: UIPickerView!
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var averageScore: UIButton!
    @IBOutlet weak var cat1Score: UITextField!
    @IBOutlet weak var cat4Score: UITextField!
    @IBOutlet weak var cat2Score: UITextField!
    @IBOutlet weak var cat5Score: UITextField!
    @IBOutlet weak var cat3Score: UITextField!
    @IBOutlet weak var cat6Score: UITextField!
    @IBOutlet weak var positiveFeedback: UITextView!
    @IBOutlet weak var constructiveFeedback: UITextView!
    
    let assignment = ["DEMO", "3 Interesting Facts", "???", "Group Presentation"]
    let presenter = ["Joe", "Dave", "James"]

    override func viewDidLoad() {
        super.viewDidLoad()
        selectPresenterPicker.dataSource = self
        selectPresenterPicker.delegate = self
        selectAssignmentPicker.dataSource = self
        selectAssignmentPicker.delegate = self
    
        //adds a button to the keyboard
    let kb = UIToolbar()
        kb.sizeToFit()
    let doneButton = UIBarButtonItem(title: "Done", style: .done, target: self, action: #selector(doneClick))
            kb.items = [doneButton]
        cat1Score.inputAccessoryView = kb
        cat2Score.inputAccessoryView = kb
        cat3Score.inputAccessoryView = kb
        cat4Score.inputAccessoryView = kb
        cat5Score.inputAccessoryView = kb
        cat6Score.inputAccessoryView = kb
        positiveFeedback.inputAccessoryView = kb
        constructiveFeedback.inputAccessoryView = kb
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
        //uses button added to dismiss keyboard
    func doneClick() {
        self.view.endEditing(true)
    }
    
    @IBAction func selectPresenterBtnPressed(_ sender: Any) {
        selectPresenterPicker.isHidden = false
        giveFeedback.isHidden = true
        button.isHidden = true
        selectPresenterBtn.isHidden = true
        selectAssignmentBtn.isHidden = true
        topBarView.isHidden = true
        performance.isHidden = true
        topStack.isHidden = true
        middleStack.isHidden = true
        bottomStack.isHidden = true
    }
    
    @IBAction func selectAssignmentBtnPressed(_ sender: Any) {
        selectAssignmentPicker.isHidden = false
        giveFeedback.isHidden = true
        button.isHidden = true
        selectPresenterBtn.isHidden = true
        selectAssignmentBtn.isHidden = true
        topBarView.isHidden = true
        performance.isHidden = true
        topStack.isHidden = true
        middleStack.isHidden = true
        bottomStack.isHidden = true
    }
    
    //1 of 3 vital pickerView functions - Establishes the # of columns in the pickerView
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    //2 of 3 - Establishes the number of rows using the .count of a stated array
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        var countrows: Int = assignment.count
        if pickerView == selectPresenterPicker {
            countrows = presenter.count
            }
        return countrows
    }
    
    //3 of 3 - Establish the value of the column/row combination using [row] of a stated array
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if pickerView == selectAssignmentPicker {
            let titlerow = assignment[row]
            return titlerow
        }
        else if  pickerView == selectPresenterPicker {
            let titlerow = presenter[row]
            return titlerow
        }
        return ""
    }
    
    //Replaces the pickerBtn title [text] with the selection from the picker. Reverts the app to the state before the pickerBtn was pressed
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if pickerView == selectPresenterPicker {
            selectPresenterBtn.setTitle(presenter[row], for: UIControlState.normal)
            selectPresenterPicker.isHidden = true
            giveFeedback.isHidden = false
            button.isHidden = false
            selectPresenterBtn.isHidden = false
            selectAssignmentBtn.isHidden = false
            topBarView.isHidden = false
            performance.isHidden = false
            topStack.isHidden = false
            middleStack.isHidden = false
            bottomStack.isHidden = false
            
           
        }
        else if pickerView == selectAssignmentPicker {
            selectAssignmentBtn.setTitle(assignment[row], for: UIControlState.normal)
            selectAssignmentPicker.isHidden = true
            giveFeedback.isHidden = false
            button.isHidden = false
            selectPresenterBtn.isHidden = false
            selectAssignmentBtn.isHidden = false
            topBarView.isHidden = false
            performance.isHidden = false
            topStack.isHidden = false
            middleStack.isHidden = false
            bottomStack.isHidden = false
        }
    }
    
    //The following functions change the title color when the btn is slected, and reverts the title color when pressed again ----NEED TO RESEARCH HOW TO ACCOMPLISH THIS IN A SINGLE FUNCTION
    @IBAction func strongIntroBtnPressed(_ sender: Any) {
        if strongIntroBtn.currentTitleColor == UIColor.init(red: 160.0/255.0, green: 207.0/255.0, blue: 103.0/255.0, alpha: 1.0) {
            strongIntroBtn.setTitleColor(UIColor.white, for: UIControlState.normal)
        } else {
            strongIntroBtn.setTitleColor(UIColor.init(red: 160.0/255.0, green: 207.0/255.0, blue: 103.0/255.0, alpha: 1.0), for: UIControlState.normal)
        }
    }
    
    @IBAction func paceBtnPressed(_ sender: Any) {
        if paceBtn.currentTitleColor == UIColor.init(red: 160.0/255.0, green: 207.0/255.0, blue: 103.0/255.0, alpha: 1.0) {
            paceBtn.setTitleColor(UIColor.white, for: UIControlState.normal)
        } else {
            paceBtn.setTitleColor(UIColor.init(red: 160.0/255.0, green: 207.0/255.0, blue: 103.0/255.0, alpha: 1.0), for: UIControlState.normal)
        }
    }
    
    @IBAction func volumeBtnPressed(_ sender: Any) {
        if volumeBtn.currentTitleColor == UIColor.init(red: 160.0/255.0, green: 207.0/255.0, blue: 103.0/255.0, alpha: 1.0) {
            volumeBtn.setTitleColor(UIColor.white, for: UIControlState.normal)
        } else {
            volumeBtn.setTitleColor(UIColor.init(red: 160.0/255.0, green: 207.0/255.0, blue: 103.0/255.0, alpha: 1.0), for: UIControlState.normal)
        }
    }
    
    @IBAction func flowBtnPressed(_ sender: Any) {
        if flowBtn.currentTitleColor == UIColor.init(red: 160.0/255.0, green: 207.0/255.0, blue: 103.0/255.0, alpha: 1.0) {
            flowBtn.setTitleColor(UIColor.white, for: UIControlState.normal)
        } else {
            flowBtn.setTitleColor(UIColor.init(red: 160.0/255.0, green: 207.0/255.0, blue: 103.0/255.0, alpha: 1.0), for: UIControlState.normal)
        }
    }
    
    @IBAction func toneBtnPressed(_ sender: Any) {
        if toneBtn.currentTitleColor == UIColor.init(red: 160.0/255.0, green: 207.0/255.0, blue: 103.0/255.0, alpha: 1.0) {
            toneBtn.setTitleColor(UIColor.white, for: UIControlState.normal)
        } else {
            toneBtn.setTitleColor(UIColor.init(red: 160.0/255.0, green: 207.0/255.0, blue: 103.0/255.0, alpha: 1.0), for: UIControlState.normal)
        }
    }
    
    @IBAction func triggerWordsBtnPressed(_ sender: Any) {
        if triggerWordsBtn.currentTitleColor == UIColor.init(red: 160.0/255.0, green: 207.0/255.0, blue: 103.0/255.0, alpha: 1.0) {
            triggerWordsBtn.setTitleColor(UIColor.white, for: UIControlState.normal)
        } else {
            triggerWordsBtn.setTitleColor(UIColor.init(red: 160.0/255.0, green: 207.0/255.0, blue: 103.0/255.0, alpha: 1.0), for: UIControlState.normal)
        }
    }
    
    @IBAction func gesturesBtnPressed(_ sender: Any) {
        if gesturesBtn.currentTitleColor == UIColor.init(red: 160.0/255.0, green: 207.0/255.0, blue: 103.0/255.0, alpha: 1.0) {
            gesturesBtn.setTitleColor(UIColor.white, for: UIControlState.normal)
        } else {
            gesturesBtn.setTitleColor(UIColor.init(red: 160.0/255.0, green: 207.0/255.0, blue: 103.0/255.0, alpha: 1.0), for: UIControlState.normal)
        }
    }
    
    @IBAction func heldMyInterestBtnPressed(_ sender: Any) {
        if heldMyInterestBtn.currentTitleColor == UIColor.init(red: 160.0/255.0, green: 207.0/255.0, blue: 103.0/255.0, alpha: 1.0) {
            heldMyInterestBtn.setTitleColor(UIColor.white, for: UIControlState.normal)
        } else {
            heldMyInterestBtn.setTitleColor(UIColor.init(red: 160.0/255.0, green: 207.0/255.0, blue: 103.0/255.0, alpha: 1.0), for: UIControlState.normal)
        }
    }
    
    @IBAction func keptItGumpBtnPressed(_ sender: Any) {
        if keptItGumpBtn.currentTitleColor == UIColor.init(red: 160.0/255.0, green: 207.0/255.0, blue: 103.0/255.0, alpha: 1.0) {
            keptItGumpBtn.setTitleColor(UIColor.white, for: UIControlState.normal)
        } else {
            keptItGumpBtn.setTitleColor(UIColor.init(red: 160.0/255.0, green: 207.0/255.0, blue: 103.0/255.0, alpha: 1.0), for: UIControlState.normal)
        }
    }
    
    @IBAction func strongCloseBtnPressed(_ sender: Any) {
        if strongCloseBtn.currentTitleColor == UIColor.init(red: 160.0/255.0, green: 207.0/255.0, blue: 103.0/255.0, alpha: 1.0) {
            strongCloseBtn.setTitleColor(UIColor.white, for: UIControlState.normal)
        } else {
            strongCloseBtn.setTitleColor(UIColor.init(red: 160.0/255.0, green: 207.0/255.0, blue: 103.0/255.0, alpha: 1.0), for: UIControlState.normal)
        }
    }
    
    @IBAction func eyeContactBtnPressed(_ sender: Any) {
        if eyeContactBtn.currentTitleColor == UIColor.init(red: 160.0/255.0, green: 207.0/255.0, blue: 103.0/255.0, alpha: 1.0) {
            eyeContactBtn.setTitleColor(UIColor.white, for: UIControlState.normal)
        } else {
            eyeContactBtn.setTitleColor(UIColor.init(red: 160.0/255.0, green: 207.0/255.0, blue: 103.0/255.0, alpha: 1.0), for: UIControlState.normal)
        }
    }
    
    @IBAction func timeBtnPressed(_ sender: Any) {
        if timeBtn.currentTitleColor == UIColor.init(red: 160.0/255.0, green: 207.0/255.0, blue: 103.0/255.0, alpha: 1.0) {
            timeBtn.setTitleColor(UIColor.white, for: UIControlState.normal)
        } else {
            timeBtn.setTitleColor(UIColor.init(red: 160.0/255.0, green: 207.0/255.0, blue: 103.0/255.0, alpha: 1.0), for: UIControlState.normal)
        }
    }
    
    @IBAction func facialCuesBtnPressed(_ sender: Any) {
        if facialCuesBtn.currentTitleColor == UIColor.init(red: 160.0/255.0, green: 207.0/255.0, blue: 103.0/255.0, alpha: 1.0) {
            facialCuesBtn.setTitleColor(UIColor.white, for: UIControlState.normal)
        } else {
            facialCuesBtn.setTitleColor(UIColor.init(red: 160.0/255.0, green: 207.0/255.0, blue: 103.0/255.0, alpha: 1.0), for: UIControlState.normal)
        }
    }
    
    @IBAction func structureBtnPressed(_ sender: Any) {
        if structureBtn.currentTitleColor == UIColor.init(red: 160.0/255.0, green: 207.0/255.0, blue: 103.0/255.0, alpha: 1.0) {
            structureBtn.setTitleColor(UIColor.white, for: UIControlState.normal)
        } else {
            structureBtn.setTitleColor(UIColor.init(red: 160.0/255.0, green: 207.0/255.0, blue: 103.0/255.0, alpha: 1.0), for: UIControlState.normal)
        }
    }
    
    @IBAction func useTheSpaceBtnPressed(_ sender: Any) {
        if useTheSpaceBtn.currentTitleColor == UIColor.init(red: 160.0/255.0, green: 207.0/255.0, blue: 103.0/255.0, alpha: 1.0) {
            useTheSpaceBtn.setTitleColor(UIColor.white, for: UIControlState.normal)
        } else {
            useTheSpaceBtn.setTitleColor(UIColor.init(red: 160.0/255.0, green: 207.0/255.0, blue: 103.0/255.0, alpha: 1.0), for: UIControlState.normal)
        }
    }
    
    @IBAction func dictionBtnPressed(_ sender: Any) {
        if dictionBtn.currentTitleColor == UIColor.init(red: 160.0/255.0, green: 207.0/255.0, blue: 103.0/255.0, alpha: 1.0) {
            dictionBtn.setTitleColor(UIColor.white, for: UIControlState.normal)
        } else {
            dictionBtn.setTitleColor(UIColor.init(red: 160.0/255.0, green: 207.0/255.0, blue: 103.0/255.0, alpha: 1.0), for: UIControlState.normal)
        }
    }
    
    //Dismisses the view when the home button is pressed
    @IBAction func homeBtnPressed(_ sender: Any) {
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
