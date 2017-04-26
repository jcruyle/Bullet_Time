//
//  VideoVC.swift
//  Commanding A Room
//
//  Created by Joe Elias on 4/10/17.
//  Copyright © 2017 JCAPPS. All rights reserved.
//

import UIKit

class VideoVC: UIViewController {
    
    @IBOutlet weak var webView: UIWebView!
    
    @IBOutlet weak var titleLbl: UILabel!
    
    private var _bonusContent: BonusContent!
    
    var bonusContent: BonusContent{
        get {
        return _bonusContent
    } set {
    _bonusContent = newValue
    }
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        titleLbl.text = bonusContent.videoTitle
        webView.loadHTMLString(bonusContent.videoURL, baseURL: nil)
        
        
    }
    
    override func viewWillDisappear(_ animated : Bool) {
        super.viewWillDisappear(animated)
        
        if (self.isMovingFromParentViewController) {
            UIDevice.current.setValue(Int(UIInterfaceOrientation.portrait.rawValue), forKey: "orientation")
        }
    }
    
    func canRotate() -> Void {}
    
    @IBAction func backBtn(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
