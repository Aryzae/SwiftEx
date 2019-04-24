//
//  Routable.swift
//  SwiftEx
//
//  Created by Aryzae. on 2018/02/05.
//  Copyright © 2018年 Aryzae. All rights reserved.
//

import UIKit

enum PresentDestination {
    case viewControllerA
    case viewControllerB(url: URL)

    var viewController: UIViewController {
        let viewController: UIViewController

        switch self {
        case .viewControllerA:
            viewController = UIViewController()
        case .viewControllerB(_):
            viewController = UIViewController()
        }
        return viewController
    }

}

enum PushDestination {
    case viewControllerA
    case viewControllerB(url: URL)

    var viewController: UIViewController {
        let viewController: UIViewController

        switch self {
        case .viewControllerA:
            viewController = UIViewController()
        case .viewControllerB(_):
            viewController = UIViewController()
        }
        return viewController
    }
}

protocol Routable {
    func present(_ presentViewController: PresentDestination, from viewController: UIViewController, animated: Bool, completion: (() -> Void)?)
    func navigationPush(_ pushViewController: PushDestination, from viewController: UIViewController, animated: Bool)
}

extension Routable {
    func present(_ destination: PresentDestination, from viewController: UIViewController, animated: Bool, completion: (() -> Void)?) {
        viewController.present(destination.viewController, animated: animated, completion: completion)
    }
    
    func navigationPush(_ destination: PushDestination, from viewController: UIViewController, animated: Bool) {
        viewController.navigationController?.pushViewController(destination.viewController, animated: true)
    }
}
