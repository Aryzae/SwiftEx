//
//  Code128Generator.swift
//  SwiftEx
//
//  Created by Aryzae on 2018/01/27.
//  Copyright © 2018年 aryzae. All rights reserved.
//

import UIKit
import CoreImage

class Code128 {
    // CIFilter名
    private static let code128 = "CICode128BarcodeGenerator"
    // CIFilter用のKey
    private static let messageKey = "inputMessage"
    private static let quietSpaceKey = "inputQuietSpace"

    /// Code128のバーコードを作成する
    ///
    /// - Parameters:
    ///   - string: バーコードにしたい文字列(ASCIIのみ)
    ///   - margin: バーコード周りの余白
    ///   - scale: バーコードの拡大率
    /// - Returns: Code128のバーコード (生成できない時は、nil)
    public static func generate(from string: String, margin: CGFloat = 7.0, scale: CGFloat = 1.0) -> UIImage? {
        // 文字列をData型(ascii)に変換
        let data = string.data(using: .ascii)
        // Code128のCIFilterを作成
        guard let filter = CIFilter(name: code128) else { return nil }
        filter.setValue(data, forKey: messageKey)
        filter.setValue(margin, forKey: quietSpaceKey)
        // CIImage化
        guard var ciImage = filter.outputImage else { return nil }
        // スケール変更
        ciImage = ciImage.transformed(by: .init(scaleX: scale, y: scale))
        return UIImage(ciImage: ciImage)
    }


    /// Code128のバーコードを作成する
    ///
    /// - Parameters:
    ///   - string: バーコードにしたい文字列(ASCIIのみ)
    ///   - margin: バーコード周りの余白
    ///   - size: バーコードのサイズ
    /// - Returns: Code128のバーコード (生成できない時は、nil)
    public static func generate(from string: String, margin: CGFloat = 7.0, size: CGSize) -> UIImage? {
        // 文字列をData型(ascii)に変換
        let data = string.data(using: .ascii)
        // Code128のCIFilterを作成
        guard let filter = CIFilter(name: code128) else { return nil }
        filter.setValue(data, forKey: messageKey)
        filter.setValue(margin, forKey: quietSpaceKey)
        // CIImage化
        guard var ciImage = filter.outputImage else { return nil }
        // スケール計算
        let widthScale = size.width / ciImage.extent.size.width
        let heightScale = size.height / ciImage.extent.size.height
        // スケール変更
        ciImage = ciImage.transformed(by: .init(scaleX: widthScale, y: heightScale))
        return UIImage(ciImage: ciImage)
    }
}
