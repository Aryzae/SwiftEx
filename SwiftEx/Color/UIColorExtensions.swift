//
//  UIColorExtensions.swift
//  SwiftExtensions
//
//  Created by Aryzae on 2017/12/27.
//  Copyright © 2017年 Aryzae. All rights reserved.
//

import UIKit

extension UIColor {

    /// <#Description#>
    ///
    /// - Parameters:
    ///   - hex: <#hex description#>
    ///   - alpha: <#alpha description#>
    public convenience init(hex: Int, alpha: CGFloat = 1.0) {
        let r = CGFloat((hex & 0xFF0000) >> 16) / 0xFF
        let g = CGFloat((hex & 0x00FF00) >> 8) / 0xFF
        let b = CGFloat(hex & 0x0000FF) / 0xFF
        self.init(red: r, green: g, blue: b, alpha: alpha)
    }
    
//    public convenience init(hexStr: String, alpha: CGFloat = 1.0) {
//        let hexReg = "[^0-9a-fA-F]"
//        let regexp = try! NSRegularExpression.init(pattern: hexReg, options: [])
//        let hex = regexp.firstMatch(in: hexStr, options: [], range: NSRange.init(location: 0, length: hexStr.count))
//        let range = NSMakeRange(0, countElements(str))
//        let hex = (str as NSString).stringByReplacingOccurrencesOfString("[^0-9a-fA-F]", withString: "", options: NSStringCompareOptions.RegularExpressionSearch, range: range)
//        var color: UInt32 = 0
//        Scanner(string: hexString).scanHexInt(&color)
//        self.init(hex: hex, alpha: alpha)
//    }

}
