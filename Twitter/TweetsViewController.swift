//
//  TweetsViewController.swift
//  Twitter
//
//  Created by Paul L on 10/17/14.
//  Copyright (c) 2014 Paul Lassa. All rights reserved.
//


//  tweet.favorite func. call

import UIKit

class TweetsViewController: UIViewController {

    var tweets: [Tweet]?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        TwitterClient.sharedInstance.homeTimelineWithParams(nil, completion: { (tweets,error) -> () in
                self.tweets = tweets
            //  reload tableView at this pt.
            
        })
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onLogout(sender: AnyObject) {
        User.currentUser?.logout()
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
