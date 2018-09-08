//
//  ANIPercentNSLayoutConstraint.swift
//
//
//  Created by Animesh Sen on 9/6/18.
//  Copyright © 2018 Animesh Sen. All rights reserved.
//

import UIKit

/// Layout constraint to calculate size based on multiplier.

class ANIPercentNSLayoutConstraint: NSLayoutConstraint {
    @IBInspectable var marginPercent: CGFloat = 0
    
    var screenSize: (width: CGFloat, height: CGFloat) {
        return (UIScreen.main.bounds.width, UIScreen.main.bounds.height)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        guard marginPercent > 0 else { return }
        NotificationCenter.default.addObserver(self,
                                                         selector: #selector(layoutDidChange),
                                                         name: NSNotification.Name.UIDeviceOrientationDidChange,
                                                         object: nil)
    }
    
    /**
     Re-calculate constant based on orientation and percentage.
     */
    @objc func layoutDidChange() {
        guard marginPercent > 0 else { return }
        
        switch firstAttribute {
        case .top, .topMargin, .bottom, .bottomMargin:
            constant = screenSize.height * marginPercent
        case .leading, .leadingMargin, .trailing, .trailingMargin:
            constant = screenSize.width * marginPercent
        case .height:
            constant = screenSize.height * marginPercent
        case .width:
            constant = screenSize.width * marginPercent
        default: break
        }
    }
    
    deinit {
        guard marginPercent > 0 else { return }
        NotificationCenter.default.removeObserver(self)
    }
}
