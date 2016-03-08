//
//  UIShortcuts.swift
//  babyshazam
//
//  Created by Guilherme Carvalho on 3/1/16.
//  Copyright © 2016 Guilherme Carvalho. All rights reserved.
//

import Foundation
import UIKit

class UIShortcuts: NSObject {
    
    var screen:UIView
    var bigFont,
        cursiveFont,
        strongFont:UIFont
    
    
    init(view:UIView) {
        screen = view
        bigFont = UIFont(name: "Phosphate-Solid", size: 72)!
        strongFont = UIFont(name: "Phosphate-Solid", size: 36)!
        cursiveFont = UIFont(name: "Billabong", size: 30)!
    }
    
    func background() {
        let yellow:UIColor = UIColor(red: 250.0/255.0, green: 217.0/255.0, blue: 97/255.0, alpha: 1.0)
        let orange:UIColor = UIColor(red: 247/255.0, green: 107/255.0, blue: 28/255.0, alpha: 1.0)
        
        let gradient: CAGradientLayer = CAGradientLayer()
        gradient.frame = screen.bounds
        gradient.colors = [yellow.CGColor, orange.CGColor]
        screen.layer.insertSublayer(gradient, atIndex: 0)
    }
    
    func setUpBackButton(btn:UIButton) {
        btn.titleLabel!.font = bigFont
        btn.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
        
    }
    
    func setUpBigText(titleLabel:UILabel){
        let titleText = NSAttributedString(string: titleLabel.text!, attributes: [
            NSStrokeColorAttributeName : UIColor.flatWhiteColor(),
            NSForegroundColorAttributeName : UIColor.whiteColor().colorWithAlphaComponent(0),
            NSStrokeWidthAttributeName : NSNumber(float: -4.0),
            NSFontAttributeName : bigFont
            ])
        titleLabel.attributedText = titleText
    }
    
    func setUpStrongText(titleLabel:UILabel){
        titleLabel.textColor = UIColor.whiteColor()
        titleLabel.font = strongFont
    }
    
    func setUpCursiveText(titleLabel:UILabel){
        titleLabel.font = cursiveFont
        titleLabel.textColor = UIColor.whiteColor()
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
    
}