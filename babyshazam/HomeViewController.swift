//
//  ViewController.swift
//  babyshazam
//
//  Created by Guilherme Carvalho on 2/10/16.
//  Copyright © 2016 Guilherme Carvalho. All rights reserved.
//

import UIKit
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

        
        let titleText = NSAttributedString(string: "BABY\nSHAZAM", attributes: [
            NSStrokeColorAttributeName : UIColor.flatWhiteColor(),
            NSForegroundColorAttributeName : UIColor.whiteColor().colorWithAlphaComponent(0),
            NSStrokeWidthAttributeName : NSNumber(float: -4.0),
            NSFontAttributeName : UIFont(name: "Phosphate-Solid", size: 72)!
            ])
        titleLabel.attributedText = titleText

        let cursiveFont = UIFont(name: "Billabong", size: 30)
        let lightColor = UIColor.flatWhiteColor()
        subtitle.font = cursiveFont
        subtitle.textColor = lightColor
        buttonify(listenBtn)
        buttonify(logBtn)
        buttonify(optionsBtn)
        
        
        let yellow:UIColor = UIColor(red: 250.0/255.0, green: 217.0/255.0, blue: 97/255.0, alpha: 1.0)
        let orange:UIColor = UIColor(red: 247/255.0, green: 107/255.0, blue: 28/255.0, alpha: 1.0)
        
        let gradient: CAGradientLayer = CAGradientLayer()
        gradient.frame = view.bounds
        gradient.colors = [yellow.CGColor, orange.CGColor]
        view.layer.insertSublayer(gradient, atIndex: 0)
        
        
        self.modalTransitionStyle = UIModalTransitionStyle.CrossDissolve
        
    }

    func buttonify(btn:UIButton) {
        let boldButtonFont = UIFont(name: "Phosphate-Solid", size: 36)
        let lightColor = UIColor.whiteColor()

        btn.titleLabel?.font = boldButtonFont
        btn.setTitleColor(lightColor, forState: UIControlState.Normal)
        btn.layer.borderColor = lightColor.CGColor
        btn.layer.borderWidth = 2.0
        btn.layer.cornerRadius = 30.0

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

