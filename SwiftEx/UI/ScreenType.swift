//
//  ScreenType.swift
//  SwiftEx
//
//  Created by Aryzae. on 2018/02/02.
//  Copyright © 2018年 Aryzae. All rights reserved.
//

import UIKit

var screenType = ScreenType()

enum ScreenType {
    case iPhone3_5inch
    case iPhone4_0inch
    case iPhone4_7inch
    case iPhone5_5inch
    case iPhone5_8inch
    case others

    init() {
        let screenSize = UIScreen.main.bounds.size

        switch screenSize {
        case CGSize(width: 320.0, height: 480.0):
            self = .iPhone3_5inch
        case CGSize(width: 320.0, height: 568.0):
            self = .iPhone4_0inch
        case CGSize(width: 375.0, height: 667.0):
            self = .iPhone4_7inch
        case CGSize(width: 414.0, height: 736.0):
            self = .iPhone5_5inch
        case CGSize(width: 375.0, height: 812.0):
            self = .iPhone5_8inch
        default:
            self = .other
        }
    }
}
