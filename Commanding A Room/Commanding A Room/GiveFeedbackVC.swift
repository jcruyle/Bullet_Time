//
//  GiveFeedbackVC.swift
//  Commanding A Room
//
//  Created by Jessica Saputo on 2/18/17.
//  Copyright © 2017 JCAPPS. All rights reserved.
//

import UIKit

class GiveFeedbackVC: UIViewController {
    
    @IBOutlet weak var useTheSpaceText: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
 
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func useTheSpaceBtnPressed(_ sender: Any) {
        colorSwap()
    }
    
    func colorSwap() {
        if useTheSpaceText.currentTitleColor == UIColor.init(red: 160.0/255.0, green: 207.0/255.0, blue: 103.0/255.0, alpha: 1.0) {
            useTheSpaceText.setTitleColor(UIColor.white, for: UIControlState.normal)
        } else {
            useTheSpaceText.setTitleColor(UIColor.init(red: 160.0/255.0, green: 207.0/255.0, blue: 103.0/255.0, alpha: 1.0), for: UIControlState.normal)
        }

        
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
