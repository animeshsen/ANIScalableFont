//
//  ANIScalableUIButton.swift
//
//
//  Created by Animesh Sen on 9/7/18.
//  Copyright © 2018 Animesh Sen. All rights reserved.
//

import UIKit

class ANIScalableUIButton: UIButton {
    
    @IBInspectable var widthScaling: Bool = true
    let baseScreenHeight:CGFloat = 568
    let baseScreenWidth:CGFloat = 320
    var basePoinSize:CGFloat?
    override func draw(_ rect: CGRect) {
        // Drawing code
        basePoinSize = self.titleLabel?.font.pointSize
        
        self.titleLabel?.font = self.titleLabel?.font.withSize(basePoinSize! + (basePoinSize! * getMultiplier()))
        
        NotificationCenter.default.addObserver(self, selector: #selector(deviceOrientationDidChange), name: NSNotification.Name.UIApplicationDidChangeStatusBarOrientation, object: nil)

    }

    @objc func deviceOrientationDidChange(_ notification: Notification) {
        
        self.titleLabel?.font = self.titleLabel?.font.withSize(basePoinSize! + (basePoinSize! * getMultiplier()))

    }
    
    func getMultiplier() -> CGFloat {
       
        if widthScaling
        {
            return  (UIScreen.main.bounds.width - baseScreenWidth) / baseScreenWidth
        }
        else
        {
            return  (UIScreen.main.bounds.height - baseScreenHeight) / baseScreenHeight
        }
        
    }

    deinit {
        NotificationCenter.default.removeObserver(self)
    }
}
