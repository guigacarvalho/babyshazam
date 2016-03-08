//
//  OptionsViewController.swift
//  babyshazam
//
//  Created by Guilherme Carvalho on 2/17/16.
//  Copyright © 2016 Guilherme Carvalho. All rights reserved.
//

import UIKit

class OptionsViewController:UIViewController {
    
    @IBOutlet weak var backBtn: UIButton!
    @IBOutlet weak var screenTitle: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        let setupView = UIShortcuts(view: view)
        setupView.background()
        setupView.setUpStrongText(screenTitle)
        setupView.setUpBackButton(backBtn)


    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    @IBAction func backToHome(sender: AnyObject) {
        let home = storyboard?.instantiateViewControllerWithIdentifier("home") as! HomeViewController
        self.presentViewController(home, animated: true, completion: nil)
    }
    
}