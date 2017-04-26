//
//  BonusCell.swift
//  Commanding A Room
//
//  Created by Joe Elias on 4/24/17.
//  Copyright © 2017 JCAPPS. All rights reserved.
//

import UIKit

class BonusCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    @IBOutlet weak var videoPreviewImage: UIImageView!
    
    
    @IBOutlet weak var videoTitle: UILabel!
    

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func updateUI (bonusContent: BonusContent) {
        videoTitle.text = bonusContent.videoTitle

        let url = URL(string: bonusContent.imageURL)!
        
        DispatchQueue.global().async {
            do {
                let data = try Data(contentsOf: url)
                DispatchQueue.global().sync {
                    self.videoPreviewImage.image = UIImage(data: data)
                }
            } catch {
                
            }
            }
            
        }
}

