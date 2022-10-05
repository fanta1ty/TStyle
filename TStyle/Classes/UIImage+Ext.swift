//
//  UIImage+Ext.swift
//  TStyle
//
//  Created by Nguyen, Thinh on 05/10/2022.
//

import Foundation
import UIKit

public extension UIImage {
    static func from(color: UIColor) -> UIImage {
        let bounds = CGRect(x: 0, y: 0, width: 1, height: 1)
        let renderer = UIGraphicsImageRenderer(bounds: bounds)
        return renderer.image { _ in
            color.setFill()
            UIRectFill(bounds)
        }
    }
    
    static func circle(withDiameter diameter: CGFloat, color: UIColor) -> UIImage {
        roundedRect(
            withSize: .init(width: diameter, height: diameter),
            color: color,
            cornerRadius: diameter / 2
        )
    }
    
    static func roundedRect(withSize size: CGSize,
                            color: UIColor,
                            cornerRadius: CGFloat) -> UIImage {
        let bounds = CGRect(x: 0, y: 0, width: size.width, height: size.height)
        let renderer = UIGraphicsImageRenderer(bounds: bounds)

        return renderer.image { _ in
            color.setFill()
            let path = UIBezierPath(roundedRect: bounds, cornerRadius: cornerRadius)
            path.addClip()
            UIRectFill(bounds)
        }
    }
    
    func withPadding(_ padding: CGFloat) -> UIImage? {
        withPadding(x: padding, y: padding)
    }

    func withPadding(x: CGFloat, y: CGFloat) -> UIImage? {
        let newWidth = size.width + 2 * x
        let newHeight = size.height + 2 * y
        let newSize = CGSize(width: newWidth, height: newHeight)
        UIGraphicsBeginImageContextWithOptions(newSize, false, 0)
        let origin = CGPoint(x: (newWidth - size.width) / 2, y: (newHeight - size.height) / 2)
        draw(at: origin)
        let imageWithPadding = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()

        return imageWithPadding
    }
}
