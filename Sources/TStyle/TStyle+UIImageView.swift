//
//  TStyle+UIImageView.swift
//  TStyle
//
//  Created by Nguyen, Thinh on 05/10/2022.
//

import Foundation
import UIKit

public extension TStyle where View: UIImageView {
    func image(_ value: UIImage) -> Self {
        styling.append { imageView in
            imageView.image = value
        }
        return self
    }
}
