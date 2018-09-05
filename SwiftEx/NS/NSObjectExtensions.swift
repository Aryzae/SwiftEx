//
//  NSObjectExtensions.swift
//  SwiftEx
//
//  Created by Aryzae on 2018/01/19.
//  Copyright © 2018年 Aryzae. All rights reserved.
//

import Foundation

extension NSObject {
    static var className: String {
        return String.init(describing: self)
    }
}
