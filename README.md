![LOGO](https://github.com/fanta1ty/TSwitchLabel/blob/master/ScreenShot/Logo.png)

# TStyle

TStyle is a simple and flexible UI component fully written in Swift. TStyle is developed to help users quickly define attributes detail without having to define from scratch

[![Swift 5.0](https://img.shields.io/badge/Swift-5.0-brightgreen)](https://developer.apple.com/swift/)
[![Version](https://img.shields.io/cocoapods/v/TStyle.svg?style=flat)](https://cocoapods.org/pods/TStyle)
[![License](https://img.shields.io/cocoapods/l/TStyle.svg?style=flat)](https://cocoapods.org/pods/TStyle)
[![Platform](https://img.shields.io/cocoapods/p/TStyle.svg?style=flat)](https://cocoapods.org/pods/TStyle)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

TStyle is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'TStyle'
```

## Usage
```swift
import TStyle
```

1) For label:
```swift
let exampleLabel = UILabel()

TStyle<UILabel>()
.multiline()
.textColor(.black)
.textAlignment(.left)
.font(.systemFont(ofSize: 16))
.accessibilityIdentifier("label.example")
.text("Example Label")
.apply(to: exampleLabel)
```

2) For button:
```swift
let exampleButton = UIButton()
TStyle<UIButton>()
.font(.systemFont(ofSize: 16))
.title("Example Button")
.roundedCorners()
.accessibilityIdentifier("button.example")
.apply(to: exampleButton)
```

3) For image view:
```swift
let exampleImageView = UIImageView()
TStyle<UIImageView>()
.image(UIImage(named: "")!)
.roundedCorners()
.accessibilityIdentifier("image.example")
.apply(to: exampleImageView)
```

4) For view:
```swift
let exampleView = UIView()
TStyle<UIView>()
.roundedCorners()
.backgroundColor(.black)
.accessibilityIdentifier("view.example")
.apply(to: exampleView)
```

## Requirements
- iOS 11.0 or later
- Swift 5.0 or later

## Author

fanta1ty, thinhnguyen12389@gmail.com

## License

TStyle is available under the MIT license. See the LICENSE file for more info.
