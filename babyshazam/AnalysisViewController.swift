//
//  AnalysisViewController.swift
//  babyshazam
//
//  Created by Guilherme Carvalho on 2/17/16.
//  Copyright © 2016 Guilherme Carvalho. All rights reserved.
//

import UIKit
import Alamofire
import AlamofireObjectMapper
import ObjectMapper

class AnalysisViewController:UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let yellow:UIColor = UIColor(red: 250.0/255.0, green: 217.0/255.0, blue: 97/255.0, alpha: 1.0)
        let orange:UIColor = UIColor(red: 247/255.0, green: 107/255.0, blue: 28/255.0, alpha: 1.0)
        
        let gradient: CAGradientLayer = CAGradientLayer()
        gradient.frame = view.bounds
        gradient.colors = [yellow.CGColor, orange.CGColor]
        view.layer.insertSublayer(gradient, atIndex: 0)

        
//        let URL = "https://raw.githubusercontent.com/tristanhimmelman/AlamofireObjectMapper/2ee8f34d21e8febfdefb2b3a403f18a43818d70a/sample_keypath_json"
//        Alamofire.request(.GET, URL).responseObject("data") { (response: Response<User, NSError>) in
//            
//            let weatherResponse = response.result.value
//            print(weatherResponse?.location)
//            
//            if let threeDayForecast = weatherResponse?.threeDayForecast {
//                for forecast in threeDayForecast {
//                    print(forecast.day)
//                    print(forecast.temperature)           
//                }
//            }
//        }
        
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
