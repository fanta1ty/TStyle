//
//  ViewController.swift
//  TStyle
//
//  Created by thinhnguyen12389 on 10/05/2022.
//  Copyright (c) 2022 thinhnguyen12389. All rights reserved.
//

import UIKit
import TStyle

class ViewController: UIViewController {
    private let exampleLabel = UILabel()
    private let exampleButton = UIButton()
    private let exampleImageView = UIImageView()
    private let exampleStackView = UIStackView()
    private let exampleView = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        TStyle<UILabel>()
            .multiline()
            .textColor(.black)
            .textAlignment(.left)
            .font(.systemFont(ofSize: 16))
            .accessibilityIdentifier("label.example")
            .text("Example Label")
            .apply(to: exampleLabel)
        
        TStyle<UIButton>()
            .font(.systemFont(ofSize: 16))
            .title("Example Button")
            .roundedCorners()
            .accessibilityIdentifier("button.example")
            .apply(to: exampleButton)
        
        TStyle<UIImageView>()
            .image(UIImage(named: "")!)
            .roundedCorners()
            .accessibilityIdentifier("image.example")
            .apply(to: exampleImageView)
        
        TStyle<UIStackView>()
            .axis(.vertical)
            .alignment(.fill)
            .accessibilityIdentifier("stackview.example")
            .apply(to: exampleStackView)
        
        TStyle<UIView>()
            .roundedCorners()
            .backgroundColor(.black)
            .accessibilityIdentifier("view.example")
            .apply(to: exampleView)
    }
    
    
}

