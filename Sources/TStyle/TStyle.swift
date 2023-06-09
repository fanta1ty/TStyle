//
//  TStyle.swift
//  TStyle
//
//  Created by Nguyen, Thinh on 05/10/2022.
//

import Foundation
import UIKit

public class TStyle<View> {
    var styling: [(View) -> Void] = []

    public init() {}

    public func apply(to view: View) {
        styling.forEach { styleView in
            styleView(view)
        }
    }

    public func with<T>(_ keyPath: ReferenceWritableKeyPath<View, T>, _ value: T) -> Self {
        styling.append { view in
            view[keyPath: keyPath] = value
        }

        return self
    }
}
