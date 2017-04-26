//
//  BonusContentVC.swift
//  Commanding A Room
//
//  Created by Jessica Saputo on 2/18/17.
//  Copyright © 2017 JCAPPS. All rights reserved.
//

import UIKit

class BonusContentVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var tableView: UITableView!

    var bonusContents = [BonusContent]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let p1 = BonusContent(imageURL: "http://i3.ytimg.com/vi/Ks-_Mh1QhMc/hqdefault.jpg", videoURL: "<iframe width=\"349\" height=\"226\" src=\"https://www.youtube.com/embed/Ks-_Mh1QhMc\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Body Langauge")
        
        let p2 = BonusContent(imageURL: "http://i3.ytimg.com/vi/-FOCpMAww28/hqdefault.jpg", videoURL: "<iframe width=\"349\" height=\"226\" src=\"https://www.youtube.com/embed/-FOCpMAww28\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Secret to Public Speaking")
        
        let p3 = BonusContent(imageURL: "http://i3.ytimg.com/vi/a2MR5XbjtXU/hqdefault.jpg", videoURL: "<iframe width=\"349\" height=\"226\" src=\"https://www.youtube.com/embed/a2MR5XbJtXU\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Speaking with Confidence")
        
        bonusContents.append(p1)
        bonusContents.append(p2)
        bonusContents.append(p3)
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "BonusCell", for: indexPath) as? BonusCell {
            
        let bonusContent = bonusContents[indexPath.row]
            
        cell.updateUI(bonusContent: bonusContent)
         
        return cell
            
        } else {
            
            return UITableViewCell()
        }
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return bonusContents.count
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let bonusContent = bonusContents[indexPath.row]
        
        performSegue(withIdentifier: "VideoVC", sender: bonusContent)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let destination = segue.destination as? VideoVC {
            
            if let bonus = sender as? BonusContent {
                destination.bonusContent = bonus
            }
        }
    }
    
    @IBAction func homeBtn(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    

}
