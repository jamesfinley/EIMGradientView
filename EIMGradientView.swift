//
//  EIMGradientView.swift
//
//  Created by James Finley on 5/23/16.
//  Copyright © 2016 Ergo Interactive Media. All rights reserved.
//

import UIKit

@IBDesignable class EIMGradientView: UIView {
    
    @IBInspectable var gradientTopColor: UIColor = UIColor.blackColor()
    @IBInspectable var gradientBottomColor: UIColor = UIColor.whiteColor()
    
    var gradient: CAGradientLayer?
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        gradient = CAGradientLayer()

        gradient?.frame = bounds
        layer.insertSublayer(gradient!, atIndex: 0)
    }
    
    override func layoutSubviews() {
        guard let gradient = self.gradient else {
            return
        }
        
        gradient.frame = bounds
        gradient.colors = [gradientTopColor.CGColor, gradientBottomColor.CGColor]
    }

}
