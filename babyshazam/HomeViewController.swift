//
//  ViewController.swift
//  babyshazam
//
//  Created by Guilherme Carvalho on 2/10/16.
//  Copyright © 2016 Guilherme Carvalho. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func goToAnalysisScreen(sender: AnyObject) {
        let analysis:AnalysisViewController = storyboard?.instantiateViewControllerWithIdentifier("analysis") as! AnalysisViewController
        presentViewController(analysis, animated: true, completion: nil)
        
    }

    @IBAction func goToLogScreen(sender: AnyObject) {
        let log:LogViewController = storyboard?.instantiateViewControllerWithIdentifier("log") as! LogViewController
        presentViewController(log, animated: true, completion: nil)
    }
    
    @IBAction func goToOptionsScreen(sender: AnyObject) {
        let options:OptionsViewController = self.storyboard?.instantiateViewControllerWithIdentifier("options") as! OptionsViewController
        presentViewController(options, animated: true, completion: nil)
    }
}

