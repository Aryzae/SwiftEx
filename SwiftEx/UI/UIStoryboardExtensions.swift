//
//  UIStoryboardExtensions.swift
//  SwiftEx
//
//  Created by Aryzae on 2018/01/19.
//  Copyright © 2018年 aryzae. All rights reserved.
//

import UIKit

extension UIStoryboard {
    public static func initiate<T>(name: T.Type) -> T where T : UIViewController {
        let className = String.init(describing: name.self)
        return UIStoryboard.init(name: className, bundle: .main).instantiateInitialViewController() as! T
    }
}
