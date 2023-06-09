//
//  TStyle+UIView.swift
//  TStyle
//
//  Created by Nguyen, Thinh on 05/10/2022.
//

import Foundation
import UIKit

public extension TStyle where View: UIView {
    func accessibilityIdentifier(_ identifier: String?) -> Self {
        styling.append { view in
            view.accessibilityIdentifier = identifier
        }

        return self
    }

    func autolayout(_ isAutolayoutEnabled: Bool = true) -> Self {
        styling.append { view in
            view.translatesAutoresizingMaskIntoConstraints = !isAutolayoutEnabled
        }

        return self
    }

    func roundedCorners(_ cornerRadius: CGFloat = 4) -> Self {
        styling.append { view in
            view.layer.masksToBounds = true
            view.layer.cornerRadius = cornerRadius
        }

        return self
    }

    func border(color: UIColor, width: CGFloat = 1) -> Self {
        styling.append { view in
            view.layer.borderColor = color.cgColor
            view.layer.borderWidth = width
        }

        return self
    }

    func backgroundColor(_ color: UIColor) -> Self {
        styling.append { view in
            view.backgroundColor = color
        }
        return self
    }

    func fixedSize(width: CGFloat? = nil, height: CGFloat? = nil) -> Self {
        styling.append { view in
            if let width = width {
                view.widthAnchor.constraint(equalToConstant: width).isActive = true
            }
            if let height = height {
                view.heightAnchor.constraint(equalToConstant: height).isActive = true
            }
        }

        return self
    }

    func tintColor(_ value: UIColor) -> Self {
        styling.append { view in
            view.tintColor = value
        }
        return self
    }

    func contentHuggingPriority(_ priority: UILayoutPriority, for axis: NSLayoutConstraint.Axis) -> Self {
        styling.append { label in
            label.setContentHuggingPriority(priority, for: axis)
        }

        return self
    }

    func contentCompressionResistancePriority(_ priority: UILayoutPriority, for axis: NSLayoutConstraint.Axis) -> Self {
        styling.append { label in
            label.setContentCompressionResistancePriority(priority, for: axis)
        }

        return self
    }
}
