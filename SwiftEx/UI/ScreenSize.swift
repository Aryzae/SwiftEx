//
//  ScreenSize.swift
//  SwiftEx
//
//  Created by Aryzae. on 2018/02/02.
//  Copyright © 2018年 Aryzae. All rights reserved.
//

import UIKit

struct ScreenSize {
    static let iPhone3_5inch = CGSize(width: 320.0, height: 480.0)  // @2x
    static let iPhone4_0inch = CGSize(width: 320.0, height: 568.0)  // @2x
    static let iPhone4_7inch = CGSize(width: 375.0, height: 667.0)  // @2x
    static let iPhone5_5inch = CGSize(width: 414.0, height: 736.0)  // @3x
    static let iPhone5_8inch = CGSize(width: 375.0, height: 812.0)  // @3x

    static var is3_5inch: Bool {
        return UIScreen.main.bounds.size == iPhone3_5inch
    }

    static var is4_0inch: Bool {
        return UIScreen.main.bounds.size == iPhone4_0inch
    }

    static var is4_7inch: Bool {
        return UIScreen.main.bounds.size == iPhone4_7inch
    }

    static var is5_5inch: Bool {
        return UIScreen.main.bounds.size == iPhone5_5inch
    }

    static var is5_8inch: Bool {
        return UIScreen.main.bounds.size == iPhone5_8inch
    }
}
