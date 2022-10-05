//
//  TStyle+UIButton.swift
//  TStyle
//
//  Created by Nguyen, Thinh on 05/10/2022.
//

import Foundation
import UIKit

public extension TStyle where View: UIButton {
    static var defaultButtonHeight: CGFloat { 50 }

    func title(_ value: String?, for state: UIControl.State = .normal) -> Self {
        styling.append { button in
            button.setTitle(value, for: state)
        }
        return self
    }

    func image(_ value: UIImage?, for state: UIControl.State = .normal) -> Self {
        styling.append { button in
            button.setImage(value, for: state)
        }
        return self
    }

    func imageToTitleSpacing(_ value: CGFloat) -> Self {
        styling.append { button in
            button.titleEdgeInsets = .init(top: 0, left: 0, bottom: 0, right: -value)
            button.imageEdgeInsets = .init(top: 0, left: -value, bottom: 0, right: 0)
        }
        return self
    }

    func titleColor(_ value: UIColor, for state: UIControl.State = .normal) -> Self {
        styling.append { button in
            button.setTitleColor(value, for: state)
        }
        return self
    }

    func color(_ value: UIColor, for state: UIControl.State = .normal) -> Self {
        styling.append { button in
            button.setBackgroundImage(.from(color: value), for: state)
        }
        return self
    }

    func font(_ value: UIFont) -> Self {
        styling.append { button in
            button.titleLabel?.font = value
        }
        return self
    }

    func image(_ value: UIImage, for state: UIControl.State = .normal) -> Self {
        styling.append { button in
            button.setImage(value, for: state)
        }
        return self
    }

    func additionalSpaceArea(horizontal: CGFloat, vertical: CGFloat) -> Self {
        styling.append { button in
            button.contentEdgeInsets = UIEdgeInsets(top: horizontal / 2, left: vertical / 2, bottom: horizontal / 2, right: vertical / 2)
        }
        return self
    }

    func tintColor(_ value: UIColor) -> Self {
        styling.append { button in
            button.tintColor = value
        }
        return self
    }
}
