//
//  WebViewControllable.swift
//  SwiftEx
//
//  Created by Sho Ito on 2018/02/05.
//  Copyright © 2018年 Aryzae. All rights reserved.
//

import UIKit
import WebKit

protocol WebViewControllable {
    var webView: WKWebView! { get set }
    var backButton: UIBarButtonItem! { get set }
    var forwardButton: UIBarButtonItem! { get set }

    func controlBackAndForward()

    func webViewGoBack()

    func webViewGoForward()

    func webViewReload()
}

extension WebViewControllable {

    func controlBackAndForward() {
        backButton.isEnabled = webView.canGoBack
        forwardButton.isEnabled = webView.canGoForward
    }

    func webViewGoBack() {
        webView.goBack()
        controlBackAndForward()
    }

    func webViewGoForward() {
        webView.goForward()
        controlBackAndForward()
    }

    func webViewReload() {
        webView.reload()
    }
}
