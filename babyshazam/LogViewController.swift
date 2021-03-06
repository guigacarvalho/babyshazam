//
//  LogViewController.swift
//  babyshazam
//
//  Created by Guilherme Carvalho on 2/17/16.
//  Copyright © 2016 Guilherme Carvalho. All rights reserved.
//

import UIKit

class LogViewController: UIViewController {
    @IBOutlet weak var screenTitle: UILabel!
    @IBOutlet weak var backBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib
        
        let setupView = UIShortcuts(view: view)
        setupView.background()
        setupView.setUpStrongText(screenTitle)
        setupView.setUpBackButton(backBtn)


    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func backToHome(sender: AnyObject) {
        let home = storyboard?.instantiateViewControllerWithIdentifier("home") as! HomeViewController
        self.presentViewController(home, animated: true, completion: nil)
    }
}