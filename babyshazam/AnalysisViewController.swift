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
//import UIShortcuts


class AnalysisViewController:UIViewController {
    
    @IBOutlet weak var backBtn: UIButton!
    @IBOutlet weak var analisysLabel: UILabel!
    @IBOutlet weak var screenTitle: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        let setupView = UIShortcuts(view: view)
        setupView.background()
        setupView.setUpBigText(analisysLabel)
        setupView.setUpStrongText(screenTitle)
        setupView.setUpCursiveText(questionLabel)
        setupView.setUpBackButton(backBtn)
        
        
        
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
