//
//  DateFormatterExtensions.swift
//  SwiftEx
//
//  Created by Aryzae on 2018/01/17.
//  Copyright © 2018年 aryzae. All rights reserved.
//

import Foundation

extension DateFormatter {
    
    convenience init(localeId: LocaleId) {
        self.init()
        self.locale = Locale(identifier: localeId.rawValue)
    }
}
