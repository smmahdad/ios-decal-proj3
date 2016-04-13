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
    
    var image : UIImage?
    var numLikes : Int?
    var liked : Bool?
    var userName : String?
    var date : String?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.image = self.image!
        likesLabel.text = String(self.numLikes!) + " likes"
        //Deal with liked picture
        userNameLabel.text = self.userName!
        dateLabel.text = self.date!
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
