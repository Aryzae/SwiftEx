//
//  UIScreenExtensions.swift
//  SwiftEx
//
//  Created by Aryzae. on 2018/01/26.
//  Copyright © 2018年 Aryzae. All rights reserved.
//

import UIKit

fileprivate var currentBrightness: CGFloat? = nil

extension UIScreen {

    func restoreOrMaximizeBrightness() {
        if let brightness = currentBrightness {
            UIScreen.main.brightness = brightness
            currentBrightness = nil
        } else {
            currentBrightness = UIScreen.main.brightness
            UIScreen.main.brightness = 1.0
        }
    }
}
