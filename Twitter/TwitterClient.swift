//
//  TwitterClient.swift
//  Twitter
//
//  Created by Paul L on 10/12/14.
//  Copyright (c) 2014 Paul Lassa. All rights reserved.
//

import UIKit

let TwitterConsumerKey = "fMAYHqQo3C9Uj5CYtNaiJifaw"
let TwitterConsumerSecret = "QiSWCPWJ0o1MVuV7hAge1IgeSYn4vlcu6ClZeIMVYzt3roS3aE"
let TwitterBaseURL = NSURL(string: "https://api.twitter.com")

class TwitterClient: BDBOAuth1RequestOperationManager {
    
    class var sharedInstance : TwitterClient{
    
    struct Static {
        static let instance = TwitterClient(baseURL: TwitterBaseURL, consumerKey: TwitterConsumerKey, consumerSecret: TwitterConsumerSecret)
        }
        return Static.instance
    }
   
}
