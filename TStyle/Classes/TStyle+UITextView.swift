//
//  TStyle+UITextView.swift
//  TStyle
//
//  Created by Nguyen, Thinh on 05/10/2022.
//

import Foundation
import UIKit

public extension TStyle where View: UITextView {

    func text(_ value: String) -> Self {
        styling.append { view in
            view.text = value
        }
        return self
    }

    func textColor(_ value: UIColor) -> Self {
        styling.append { view in
            view.textColor = value
        }
        return self
    }

    func font(_ value: UIFont) -> Self {
        styling.append { view in
            view.font = value
        }
        return self
    }

    func layoutManagerDelegate(_ value: NSLayoutManagerDelegate) -> Self {
        styling.append { view in
            view.layoutManager.delegate = value
        }
        return self
    }
}
