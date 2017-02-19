//
//  LessonsVC.swift
//  Commanding A Room
//
//  Created by Jessica Saputo on 2/18/17.
//  Copyright © 2017 JCAPPS. All rights reserved.
//

import UIKit

class LessonsVC: UIViewController {
    

    //This is a collection of all the views that make up the menu options
    @IBOutlet var menuView: [UIView]! {
        didSet {
            menuView.forEach {
                $0.isHidden = true
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func lesson1BtnPressed(_ sender: Any) {
        hideMenu()
    }
    
    @IBAction func lesson2BtnPressed(_ sender: Any) {
        hideMenu()
    }
    
    @IBAction func lesson3BtnPressed(_ sender: Any) {
        hideMenu()
    }
    
    @IBAction func lesson4BtnPressed(_ sender: Any) {
        hideMenu()
    }
    
    @IBAction func lesson5BtnPressed(_ sender: Any) {
        hideMenu()
    }
    
    @IBAction func lesson6BtnPressed(_ sender: Any) {
        hideMenu()
    }
    
    @IBAction func menuBtnPressed(_ sender: Any) {
        hideMenu()
    }
    
    // Hides & unhides the views that make up the menu options
    func hideMenu() {
        UIView.animate(withDuration: 0.2) {
            self.menuView.forEach {
                $0.isHidden = !$0.isHidden
            }
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
