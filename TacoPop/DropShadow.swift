//
//  DropShadow.swift
//  TacoPop
//
//  Created by AADITYA NARVEKAR on 7/9/17.
//  Copyright © 2017 Aaditya Narvekar. All rights reserved.
//

import Foundation
import UIKit

protocol DropShadow { }

extension DropShadow where Self: UIView {
    func addDropShadow() {
        self.layer.shadowColor = UIColor.black.cgColor
        self.layer.shadowOpacity = 0.8
        self.layer.shadowOffset = CGSize.zero
        self.layer.shadowRadius = 7.5
    }
}
