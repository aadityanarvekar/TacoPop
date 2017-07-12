//
//  Shakeable.swift
//  TacoPop
//
//  Created by AADITYA NARVEKAR on 7/12/17.
//  Copyright © 2017 Aaditya Narvekar. All rights reserved.
//

import Foundation
import UIKit

protocol Shakeable { }

extension Shakeable where Self : UIView {
    func shake() {
        let animation = CABasicAnimation(keyPath: "position")
        animation.duration = 0.07
        animation.repeatCount = 4
        animation.autoreverses = true
        animation.fromValue = NSValue(cgPoint: CGPoint(x: self.center.x - 4, y: self.center.y))
        animation.toValue = NSValue(cgPoint: CGPoint(x: self.center.x + 4, y: self.center.y))
        self.layer.add(animation, forKey: "position")
    }
}
