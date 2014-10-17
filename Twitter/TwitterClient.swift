//
//  TwitterClient.swift
//  Twitter
//
//  Created by Paul L on 10/12/14.
//  Copyright (c) 2014 Paul Lassa. All rights reserved.
//

import UIKit

let twitterConsumerKey = "fMAYHqQo3C9Uj5CYtNaiJifaw"
let twitterConsumerSecret = "QiSWCPWJ0o1MVuV7hAge1IgeSYn4vlcu6ClZeIMVYzt3roS3aE"
let twitterBaseURL = NSURL(string: "https://api.twitter.com")

class TwitterClient: BDBOAuth1RequestOperationManager {
    
    class var sharedInstance : TwitterClient{
    
    struct Static {
        static let instance = TwitterClient(baseURL: twitterBaseURL, consumerKey: twitterConsumerKey, consumerSecret: twitterConsumerSecret)
        }
        return Static.instance
    }
   
}
