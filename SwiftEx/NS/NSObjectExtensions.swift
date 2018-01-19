//
//  NSObjectExtensions.swift
//  SwiftEx
//
//  Created by aryzae on 2018/01/19.
//  Copyright © 2018年 aryzae. All rights reserved.
//

import Foundation

extension NSObject {
    static var className: String {
        return String.init(describing: self)
    }
}
