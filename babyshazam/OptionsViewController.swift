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
        let yellow:UIColor = UIColor(red: 250.0/255.0, green: 217.0/255.0, blue: 97/255.0, alpha: 1.0)
        let orange:UIColor = UIColor(red: 247/255.0, green: 107/255.0, blue: 28/255.0, alpha: 1.0)
        
        let gradient: CAGradientLayer = CAGradientLayer()
        gradient.frame = view.bounds
        gradient.colors = [yellow.CGColor, orange.CGColor]
        view.layer.insertSublayer(gradient, atIndex: 0)

    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    @IBAction func backToHome(sender: AnyObject) {
        let home = storyboard?.instantiateViewControllerWithIdentifier("home") as! HomeViewController
        self.presentViewController(home, animated: true, completion: nil)
    }
    
}