//
//  DetailedPhotoViewController.swift
//  Photos
//
//  Created by Sam Mahdad on 4/12/16.
//  Copyright © 2016 iOS DeCal. All rights reserved.
//

import UIKit

class DetailedPhotoViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var userNameLabel: UILabel!
    
    @IBOutlet weak var dateLabel: UILabel!
    
    @IBOutlet weak var likesLabel: UILabel!
    
    @IBOutlet weak var likeButton: UIButton!
    
    var originalPhoto : Photo?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.likeButton.addTarget(self, action: "buttonTapped", forControlEvents: .TouchUpInside)
        
        let url = NSURL(string: originalPhoto!.url)!
        imageView.image = UIImage(data: NSData(contentsOfURL: url)!)
        likesLabel.text = String(originalPhoto!.likes)
        userNameLabel.text = originalPhoto!.username
        
        var tempStr = String(NSDate(timeIntervalSince1970: Double(originalPhoto!.date!)!))
        var ind = tempStr.startIndex.advancedBy(5)
        tempStr = tempStr.substringFromIndex(ind)
        ind = tempStr.startIndex.advancedBy(5)
        dateLabel.text = tempStr.substringToIndex(ind)
        
        
        if originalPhoto!.selfLiked! {
            likeButton.setImage(UIImage(named: "filledHeart.jpg"), forState: .Normal)
            self.likesLabel.text = String(self.numLikes! + 1)
            originalPhoto!.likes! += 1
        }
        print(dateLabel.text)
    }
    
    func buttonTapped() {
        originalPhoto!.selfLiked! = !(originalPhoto!.selfLiked!)
        if originalPhoto!.selfLiked! {
            likeButton.setImage(UIImage(named: "filledHeart.jpg"), forState: .Normal)
            originalPhoto!.likes! += 1
            self.likesLabel.text = String(originalPhoto!.likes)
        } else {
            likeButton.setImage(UIImage(named: "emptyHeart.jpg"), forState: .Normal)
            originalPhoto!.likes! -= 1
            likesLabel.text = String(originalPhoto!.likes!)
        }
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
