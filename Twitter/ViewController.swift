//
//  ViewController.swift
//  Twitter
//
//  Created by Paul L on 10/12/14.
//  Copyright (c) 2014 Paul Lassa. All rights reserved.
//

import UIKit

func d(_ message: String = "", function: String = __FUNCTION__, file: String = __FILE__) {
    println("\n> \(file.lastPathComponent.stringByDeletingPathExtension) : \(function)\n: \(message)")
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onLogin(sender: AnyObject) {
        TwitterClient.sharedInstance.loginWithCompletion() {
            (user: User?, error: NSError?) in
            if user != nil {
                // perform segue
                self.performSegueWithIdentifier("loginSegue", sender: self)
            } else {
                // handle login error
            }
        }

    }
}
