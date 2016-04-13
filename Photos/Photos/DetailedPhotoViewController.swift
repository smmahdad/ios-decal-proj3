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
    
    var image : UIImage?
    var numLikes : Int?
    var liked : Bool? = false
    var userName : String?
    var date : String?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.likeButton.addTarget(self, action: "buttonTapped", forControlEvents: .TouchUpInside)
        
        imageView.image = self.image!
        likesLabel.text = String(self.numLikes!)
        //Deal with liked picture
        userNameLabel.text = self.userName!
        
        var tempStr = String(NSDate(timeIntervalSince1970: Double(self.date!)!))
        var ind = tempStr.startIndex.advancedBy(5)
        tempStr = tempStr.substringFromIndex(ind)
        ind = tempStr.startIndex.advancedBy(5)
        dateLabel.text = tempStr.substringToIndex(ind)
        if self.liked! {
            likeButton.setImage(UIImage(named: "filledHeart.jpg"), forState: .Normal)
            self.likesLabel.text = String(self.numLikes! + 1)
        }
        print(dateLabel.text)
    }
    
    func buttonTapped() {
        self.liked! = !(self.liked!)
        if self.liked! {
            likeButton.setImage(UIImage(named: "filledHeart.jpg"), forState: .Normal)
            self.likesLabel.text = String(self.numLikes! + 1)
        } else {
            likeButton.setImage(UIImage(named: "emptyHeart.jpg"), forState: .Normal)
            likesLabel.text = String(self.numLikes!)
        }
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
