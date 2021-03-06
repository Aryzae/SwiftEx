//
//  StringExtensions.swift
//  SwiftExtensions
//
//  Created by Aryzae on 2018/01/11.
//  Copyright © 2018年 Aryzae. All rights reserved.
//

import Foundation

// MARK: - Subscript
extension String {

    /// String[index]
    ///
    /// - Parameter i: Index of String
    public subscript(i: Int) -> String {
        let index = self.index(startIndex, offsetBy: i)
        return String(self[index])
    }

    /// String[startIndex..<endIndex]
    ///
    /// - Parameter range: CountableRange<Int> (ex. 0..<5)
    public subscript(range: CountableRange<Int>) -> String {
        let start = index(startIndex, offsetBy: range.lowerBound)
        let end = index(startIndex, offsetBy: range.upperBound)
        return String(self[start..<end])
    }

    /// String[startIndex...endIndex]
    ///
    /// - Parameter range: CountableClosedRange<Int> (ex. 0...5)
    public subscript(range: CountableClosedRange<Int>) -> String {
        let start = index(startIndex, offsetBy: range.lowerBound)
        let end = index(startIndex, offsetBy: range.upperBound)
        return String(self[start...end])
    }

    /// String[startIndex...]
    ///
    /// - Parameter range: CountablePartialRangeFrom<Int> (ex. 0...)
    public subscript(range: CountablePartialRangeFrom<Int>) -> String {
        let start = index(startIndex, offsetBy: range.lowerBound)
        return String(self[start...])
    }

    /// String[...endIndex]
    ///
    /// - Parameter range: PartialRangeThrough<Int> (ex. ...5)
    public subscript(range: PartialRangeThrough<Int>) -> String {
        let end = index(startIndex, offsetBy: range.upperBound)
        return String(self[...end])
    }
}

extension String {
    
    /// Date String converted to another format date string
    ///
    /// - Parameters:
    ///   - old: current format
    ///   - new: format after converted
    /// - Returns: Optional<String>
    public func dateFormatConvert(from old: String, to new: String) -> String? {
        // convert date type with old format
        let formatter = DateFormatter(localeId: .ja_JP)
        formatter.dateFormat = old
        guard let date = formatter.date(from: self) else {
            return nil
        }
        // re-convert string with new format
        formatter.dateFormat = new
        return formatter.string(from: date)
    }
}

extension String {
    public func isValidEmail(_ address: String) -> Bool {
        let emailReg = "[a-zA-Z0-9._%+-/:~$^()&!']+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}"

        // valid regexp
        let regexp = try! NSRegularExpression.init(pattern: emailReg, options: [])

        let nsString = address as NSString
        let matchRet = regexp.firstMatch(in: address, options: [], range: NSRange.init(location: 0, length: nsString.length))
        return matchRet != nil
    }
}
