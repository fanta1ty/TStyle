//
//  TStyle+UILabel.swift
//  TStyle
//
//  Created by Nguyen, Thinh on 05/10/2022.
//

import Foundation
import UIKit

public extension TStyle where View: UILabel {
    func text(_ value: String) -> Self {
        styling.append { label in
            label.text = value
        }
        return self
    }

    func attributedText(_ value: NSAttributedString) -> Self {
        styling.append { label in
            label.attributedText = value
        }
        return self
    }

    func textAlignment(_ value: NSTextAlignment) -> Self {
        styling.append { label in
            label.textAlignment = value
        }
        return self
    }

    func font(_ value: UIFont) -> Self {
        styling.append { label in
            label.font = value
        }
        return self
    }

    func textColor(_ value: UIColor) -> Self {
        styling.append { label in
            label.textColor = value
        }
        return self
    }

    func multiline() -> Self {
        styling.append { label in
            label.numberOfLines = 0
            label.lineBreakMode = .byWordWrapping
        }
        return self
    }

    func textWithColor(_ value: String,
                       color: UIColor,
                       coloredTexts: [String]) -> Self {
        styling.append { label in
            let attributedString = NSMutableAttributedString(string: value)
            for coloredText in coloredTexts {
                let range = (value as NSString).range(of: coloredText)
                attributedString.addAttribute(NSAttributedString.Key.foregroundColor, value: color, range: range)
            }
            label.attributedText = attributedString
        }
        return self
    }
    
    func textWithColor(_ value: String,
                       color: UIColor,
                       coloredTexts: [String],
                       valueFont: UIFont,
                       coloredFonts: [UIFont]) -> Self {
        styling.append { label in
            let attributedString = NSMutableAttributedString(string: value)
             
            for (index, coloredText) in coloredTexts.enumerated() {
                let range = (value as NSString).range(of: coloredText)
                let itemFont = coloredFonts[index]
                
                attributedString.addAttribute(.foregroundColor, value: color, range: range)
                attributedString.addAttribute(.font, value: itemFont, range: range)
            }
            
            label.attributedText = attributedString
        }
        return self
    }
}
