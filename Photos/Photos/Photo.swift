//
//  Photo.swift
//  Photos
//
//  Created by Gene Yoo on 11/3/15.
//  Copyright © 2015 iOS DeCal. All rights reserved.
//

import Foundation

class Photo {
    /* The number of likes the photo has. */
    var likes : Int!
    /* The string of the url to the photo file. */
    var url : String!
    /* The username of the photographer. */
    var username : String!
    /* The date of the picture. */
    var date : String!
    /* If the user liked the photo */
    var selfLiked : Bool!

    /* Parses a NSDictionary and creates a photo object. */
    init (data: NSDictionary) {
        // FILL ME IN
        // HINT: use nested .valueForKey() calls, and then cast using 'as! TYPE'
        self.likes = data["likes"]!["count"] as! Int
        self.url = data["images"]!["standard_resolution"]!!["url"] as! String
        self.username = data["user"]!["username"] as! String
        self.date = data["created_time"] as! String
        self.selfLiked = false
    }

}