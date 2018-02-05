//
//  UIStoryboardExtensions.swift
//  SwiftEx
//
//  Created by Aryzae on 2018/01/19.
//  Copyright © 2018年 Aryzae. All rights reserved.
//

import UIKit

extension UIStoryboard {
    public static func instantiateInitialViewController<T>(from className: T.Type) -> T where T : UIViewController {
        let name = String.init(describing: className.self)
        guard let viewController = UIStoryboard.init(name: name, bundle: .main).instantiateInitialViewController() as? T else {
            fatalError()
        }
        return viewController
    }

    public static func instantiateViewController<T>(from className: T.Type, identifier: String? = nil) -> T where T : UIViewController {
        let name = String.init(describing: className.self)
        let identifier = identifier ?? name
        guard let viewController = UIStoryboard.init(name: name, bundle: .main).instantiateViewController(withIdentifier: identifier) as? T else {
            fatalError()
        }
        return viewController
    }

    public static func instanceNavigationController<T>(from className: T.Type) -> UINavigationController {
        let name = String.init(describing: className.self)
        guard let viewController = UIStoryboard.init(name: name, bundle: .main).instantiateInitialViewController() as? UINavigationController else {
            fatalError()
        }
        return viewController
    }
}
