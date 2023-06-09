//
//  TStyle+UIStackView.swift
//  TStyle
//
//  Created by Nguyen, Thinh on 05/10/2022.
//

import Foundation
import UIKit

public extension TStyle where View: UIStackView {
    func axis(_ value: NSLayoutConstraint.Axis) -> Self {
        styling.append { stackView in
            stackView.axis = value
        }
        return self
    }

    func alignment(_ value: UIStackView.Alignment) -> Self {
        styling.append { stackView in
            stackView.alignment = value
        }
        return self
    }

    func distribution(_ value: UIStackView.Distribution) -> Self {
        styling.append { stackView in
            stackView.distribution = value
        }
        return self
    }

    func spacing(_ value: CGFloat) -> Self {
        styling.append { stackView in
            stackView.spacing = value
        }
        return self
    }

    func spacing(_ value: CGFloat, after: UIView) -> Self {
        styling.append { stackView in
            stackView.setCustomSpacing(value, after: after)
        }
        return self
    }
}
