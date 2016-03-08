//
//  ViewController.swift
//  babyshazam
//
//  Created by Guilherme Carvalho on 2/10/16.
//  Copyright © 2016 Guilherme Carvalho. All rights reserved.
//

import UIKit
import AVFoundation
import ChameleonFramework


class HomeViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subtitle: UILabel!
    @IBOutlet weak var optionsBtn: UIButton!
    @IBOutlet weak var logBtn: UIButton!
    @IBOutlet weak var listenBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let setupView = UIShortcuts(view: view)
        setupView.background()
        setupView.buttonify(listenBtn)
        setupView.buttonify(logBtn)
        setupView.buttonify(optionsBtn)
        setupView.setUpCursiveText(subtitle)
        titleLabel.text = "BABY\nSHAZAM"
        setupView.setUpBigText(titleLabel)
        

        self.modalTransitionStyle = UIModalTransitionStyle.CrossDissolve
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func goToAnalysisScreen(sender: AnyObject) {
        let analysis:AnalysisViewController = storyboard?.instantiateViewControllerWithIdentifier("analysis") as! AnalysisViewController
        analysis.modalTransitionStyle = UIModalTransitionStyle.CrossDissolve
        presentViewController(analysis, animated: true, completion: nil)
        
    }

    @IBAction func goToLogScreen(sender: AnyObject) {
        let log:LogViewController = storyboard?.instantiateViewControllerWithIdentifier("log") as! LogViewController
        log.modalTransitionStyle = UIModalTransitionStyle.CrossDissolve
        presentViewController(log, animated: true, completion: nil)
    }
    
    @IBAction func goToOptionsScreen(sender: AnyObject) {
        let options:OptionsViewController = self.storyboard?.instantiateViewControllerWithIdentifier("options") as! OptionsViewController
        options.modalTransitionStyle = UIModalTransitionStyle.CrossDissolve
        presentViewController(options, animated: true, completion: nil)
    }
}

