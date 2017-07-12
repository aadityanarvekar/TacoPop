//
//  RoundedCornerView.swift
//  TacoPop
//
//  Created by AADITYA NARVEKAR on 7/10/17.
//  Copyright © 2017 Aaditya Narvekar. All rights reserved.
//

import Foundation
import UIKit

private var _roundedCorner: CGFloat! = 0.0
extension UIView {
    @IBInspectable var roundedCorner: CGFloat {
        get {
            return _roundedCorner
        }
        
        set {
            _roundedCorner = newValue
            if _roundedCorner > 0 {
                self.layer.cornerRadius = _roundedCorner
                self.layer.masksToBounds = true
            }
        }
    }
    
}
