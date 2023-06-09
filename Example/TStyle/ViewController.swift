//
//  ViewController.swift
//  TStyle
//
//  Created by thinhnguyen12389 on 10/05/2022.
//  Copyright (c) 2022 thinhnguyen12389. All rights reserved.
//

import Foundation
import TStyle
import UIKit

class ViewController: UIViewController {
    private let exampleLabel = UILabel()
    private let exampleButton = UIButton()
    private let exampleImageView = UIImageView()
    private let exampleStackView = UIStackView()
    private let exampleView = UIView()

    override func viewDidLoad() {
        super.viewDidLoad()

        addSubviews()
        setupSubviews()
        setupLayout()
    }
}

extension ViewController {
    private func addSubviews() {
        exampleStackView.addArrangedSubview(exampleLabel)
        exampleStackView.addArrangedSubview(exampleButton)
        exampleStackView.addArrangedSubview(exampleImageView)
        exampleStackView.addArrangedSubview(exampleView)

        view.addSubview(exampleStackView)
    }

    private func setupSubviews() {
        TStyle<UILabel>()
            .autolayout()
            .multiline()
            .textColor(.black)
            .textAlignment(.left)
            .font(.systemFont(ofSize: 16))
            .accessibilityIdentifier("label.example")
            .text("Example Label")
            .apply(to: exampleLabel)

        TStyle<UIButton>()
            .autolayout()
            .font(.systemFont(ofSize: 16))
            .title("Example Button")
            .roundedCorners()
            .accessibilityIdentifier("button.example")
            .backgroundColor(.red)
            .apply(to: exampleButton)

        TStyle<UIImageView>()
            .autolayout()
            .image(UIImage(named: "Image")!)
            .roundedCorners()
            .accessibilityIdentifier("image.example")
            .apply(to: exampleImageView)

        TStyle<UIStackView>()
            .autolayout()
            .axis(.vertical)
            .alignment(.fill)
            .distribution(.fill)
            .accessibilityIdentifier("stackview.example")
            .apply(to: exampleStackView)

        TStyle<UIView>()
            .autolayout()
            .roundedCorners()
            .backgroundColor(.blue)
            .accessibilityIdentifier("view.example")
            .apply(to: exampleView)
    }

    private func setupLayout() {
        NSLayoutConstraint.activate([
            exampleStackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            exampleStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            exampleStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            exampleStackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
        ])
    }
}
