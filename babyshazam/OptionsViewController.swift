//
//  OptionsViewController.swift
//  babyshazam
//
//  Created by Guilherme Carvalho on 2/17/16.
//  Copyright © 2016 Guilherme Carvalho. All rights reserved.
//

import UIKit

class OptionsViewController:UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    @IBAction func backToHome(sender: AnyObject) {
        let home = storyboard?.instantiateViewControllerWithIdentifier("home") as! HomeViewController
        self.presentViewController(home, animated: true, completion: nil)
    }
    
}