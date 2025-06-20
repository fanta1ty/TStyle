![LOGO](https://github.com/fanta1ty/TStyle/blob/master/ScreenShot/Logo.png)

# TStyle

A powerful, fluent API for styling UIKit components in Swift. TStyle provides a declarative and chainable interface for configuring UI elements, making your iOS code more readable and maintainable.

[![Swift 5.0](https://img.shields.io/badge/Swift-5.0-brightgreen)](https://developer.apple.com/swift/)
[![Version](https://img.shields.io/cocoapods/v/TStyle.svg?style=flat)](https://cocoapods.org/pods/TStyle)
[![License](https://img.shields.io/cocoapods/l/TStyle.svg?style=flat)](https://cocoapods.org/pods/TStyle)
[![Platform](https://img.shields.io/cocoapods/p/TStyle.svg?style=flat)](https://cocoapods.org/pods/TStyle)
[![Email](https://img.shields.io/badge/contact-@thinhnguyen12389@gmail.com-blue)](thinhnguyen12389@gmail.com)

## Features

- 🎨 **Fluent API** - Chain styling methods for clean, readable code
- 🔧 **Type-safe** - Leverages Swift's type system for compile-time safety
- 📱 **UIKit Integration** - Works seamlessly with all UIKit components
- 🎯 **Focused Styling** - Separate styling logic from view creation
- ⚡ **Performance** - Minimal overhead with direct property access
- 🧩 **Extensible** - Easy to add custom styling methods

## Installation

### From CocoaPods
`TStyle` is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'TStyle'
```

Second, install `TProgressHUD` into your project:
```ruby
pod install
```

### Swift Package Manager
Add TStyle to your project using Swift Package Manager:

```swift
dependencies: [
    .package(url: "https://github.com/fanta1ty/TStyle.git", brand: "master"),
]
```

### Manual Installation

1. Copy the `Sources/TStyle` folder to your project
2. Add the files to your Xcode project
3. Import TStyle in your Swift files


## Quick Start

```swift
import TStyle

// Create and style a label
let titleLabel = UILabel()
TStyle<UILabel>()
    .text("Welcome to TStyle")
    .font(.boldSystemFont(ofSize: 24))
    .textColor(.systemBlue)
    .textAlignment(.center)
    .multiline()
    .apply(to: titleLabel)

// Create and style a button
let actionButton = UIButton(type: .system)
TStyle<UIButton>()
    .title("Get Started")
    .titleColor(.white)
    .color(.systemBlue)
    .font(.systemFont(ofSize: 18, weight: .medium))
    .roundedCorners(8)
    .fixedSize(height: TStyle<UIButton>.defaultButtonHeight)
    .apply(to: actionButton)
```

## Supported Components

TStyle provides styling extensions for the following UIKit components:

- **UIView** - Base styling (background, borders, corners, constraints)
- **UILabel** - Text styling, attributed strings, multiline support
- **UIButton** - Titles, images, colors, spacing
- **UIImageView** - Image configuration
- **UITextView** - Text content and formatting
- **UIStackView** - Layout configuration
- **UIScrollView** - Scroll behavior (extensible)

## Usage Examples

### UILabel Styling

```swift
// Basic label styling
TStyle<UILabel>()
    .text("Hello, World!")
    .font(.systemFont(ofSize: 16))
    .textColor(.label)
    .textAlignment(.left)
    .apply(to: label)

// Multiline label with attributed text
TStyle<UILabel>()
    .textWithColor(
        "Welcome to TStyle framework",
        color: .systemRed,
        coloredTexts: ["TStyle"]
    )
    .font(.systemFont(ofSize: 18))
    .multiline()
    .apply(to: descriptionLabel)

// Complex attributed text with multiple colors and fonts
TStyle<UILabel>()
    .textWithColor(
        "Price: $99.99 (Save 20%)",
        colors: [.systemGreen, .systemRed],
        coloredTexts: ["$99.99", "20%"],
        valueFont: .systemFont(ofSize: 16),
        coloredFonts: [.boldSystemFont(ofSize: 18), .systemFont(ofSize: 14)]
    )
    .apply(to: priceLabel)
```

### UIButton Styling

```swift
// Primary button
TStyle<UIButton>()
    .title("Sign Up")
    .titleColor(.white)
    .color(.systemBlue)
    .font(.boldSystemFont(ofSize: 16))
    .roundedCorners(8)
    .fixedSize(height: 50)
    .apply(to: signupButton)

// Button with image and spacing
TStyle<UIButton>()
    .title("Download")
    .image(UIImage(systemName: "arrow.down.circle"))
    .imageToTitleSpacing(8)
    .titleColor(.systemBlue)
    .tintColor(.systemBlue)
    .apply(to: downloadButton)

// Button with additional touch area
TStyle<UIButton>()
    .title("Close")
    .titleColor(.systemGray)
    .additionalSpaceArea(horizontal: 20, vertical: 20)
    .apply(to: closeButton)
```

### UIView Styling

```swift
// Card-like view
TStyle<UIView>()
    .backgroundColor(.systemBackground)
    .roundedCorners(12)
    .border(color: .systemGray4, width: 1)
    .fixedSize(width: 300, height: 200)
    .autolayout()
    .apply(to: cardView)

// Custom view with accessibility
TStyle<UIView>()
    .backgroundColor(.systemBlue)
    .roundedCorners(8)
    .accessibilityIdentifier("custom-container")
    .contentHuggingPriority(.defaultHigh, for: .horizontal)
    .apply(to: containerView)
```

### UIStackView Styling

```swift
// Vertical stack with spacing
TStyle<UIStackView>()
    .axis(.vertical)
    .alignment(.fill)
    .distribution(.fill)
    .spacing(16)
    .apply(to: verticalStack)

// Horizontal stack with custom spacing
TStyle<UIStackView>()
    .axis(.horizontal)
    .alignment(.center)
    .distribution(.equalSpacing)
    .spacing(8, after: firstView)
    .apply(to: horizontalStack)
```

### UITextView Styling

```swift
// Styled text view
TStyle<UITextView>()
    .text("Enter your thoughts here...")
    .font(.systemFont(ofSize: 16))
    .textColor(.label)
    .backgroundColor(.systemGray6)
    .roundedCorners(8)
    .apply(to: textView)
```

## Advanced Usage

### Creating Reusable Styles

```swift
extension TStyle where View: UILabel {
    static var titleStyle: TStyle<UILabel> {
        TStyle<UILabel>()
            .font(.boldSystemFont(ofSize: 24))
            .textColor(.label)
            .textAlignment(.center)
    }
    
    static var subtitleStyle: TStyle<UILabel> {
        TStyle<UILabel>()
            .font(.systemFont(ofSize: 16))
            .textColor(.secondaryLabel)
            .multiline()
    }
}

// Usage
TStyle.titleStyle
    .text("Main Title")
    .apply(to: titleLabel)

TStyle.subtitleStyle
    .text("This is a subtitle with multiple lines")
    .apply(to: subtitleLabel)
```

### Generic Property Setting

```swift
// Set any property using key paths
TStyle<UIView>()
    .with(\.alpha, 0.8)
    .with(\.isHidden, false)
    .with(\.tag, 100)
    .apply(to: customView)
```

### Combining Styles

```swift
let baseStyle = TStyle<UIView>()
    .backgroundColor(.systemBackground)
    .roundedCorners(8)

let cardStyle = baseStyle
    .border(color: .systemGray4, width: 1)
    .fixedSize(height: 100)

cardStyle.apply(to: cardView)
```

## UIImage Extensions

TStyle includes useful UIImage extensions for creating colored and shaped images:

```swift
// Solid color image
let colorImage = UIImage.from(color: .systemBlue)

// Circular image
let circleImage = UIImage.circle(withDiameter: 50, color: .systemRed)

// Rounded rectangle image
let roundedImage = UIImage.roundedRect(
    withSize: CGSize(width: 100, height: 60),
    color: .systemGreen,
    cornerRadius: 8
)

// Add padding to existing image
let paddedImage = originalImage.withPadding(10)
let customPaddedImage = originalImage.withPadding(x: 20, y: 10)
```

## Architecture

TStyle uses a generic class with protocol extensions to provide type-safe styling methods:

```swift
public class TStyle<View> {
    var styling: [(View) -> Void] = []
    
    public func apply(to view: View) {
        styling.forEach { $0(view) }
    }
}
```

Each UI component extension adds specific styling methods that append closures to the `styling` array. When `apply(to:)` is called, all styling closures are executed in order.

## Performance Considerations

- TStyle has minimal runtime overhead
- Styling closures are stored and executed only when `apply(to:)` is called
- Direct property access ensures optimal performance
- No reflection or runtime introspection is used

## Best Practices

### 1. Create Reusable Styles
```swift
extension TStyle where View: UIButton {
    static var primaryButton: TStyle<UIButton> {
        TStyle<UIButton>()
            .titleColor(.white)
            .color(.systemBlue)
            .font(.boldSystemFont(ofSize: 16))
            .roundedCorners(8)
            .fixedSize(height: 50)
    }
}
```

### 2. Use Descriptive Method Names
```swift
// Good
.roundedCorners(8)
.imageToTitleSpacing(12)

// Avoid generic names when specific ones exist
.with(\.layer.cornerRadius, 8) // Less descriptive
```

### 3. Chain Related Styles
```swift
// Group related styling together
TStyle<UILabel>()
    .text("Title")
    .font(.boldSystemFont(ofSize: 18))
    .textColor(.label)
    .textAlignment(.center)
    .multiline()
    .apply(to: label)
```

### 4. Separate Styling from Layout
```swift
// Configure the view's appearance
TStyle<UIView>()
    .backgroundColor(.systemBackground)
    .roundedCorners(8)
    .border(color: .systemGray4, width: 1)
    .apply(to: view)

// Handle constraints separately
view.translatesAutoresizingMaskIntoConstraints = false
NSLayoutConstraint.activate([
    view.topAnchor.constraint(equalTo: superview.topAnchor, constant: 16),
    view.leadingAnchor.constraint(equalTo: superview.leadingAnchor, constant: 16)
])
```

## Extending TStyle

Add custom styling methods by creating extensions:

```swift
public extension TStyle where View: UIView {
    func shadow(
        color: UIColor = .black,
        opacity: Float = 0.2,
        offset: CGSize = CGSize(width: 0, height: 2),
        radius: CGFloat = 4
    ) -> Self {
        styling.append { view in
            view.layer.shadowColor = color.cgColor
            view.layer.shadowOpacity = opacity
            view.layer.shadowOffset = offset
            view.layer.shadowRadius = radius
            view.layer.masksToBounds = false
        }
        return self
    }
}

// Usage
TStyle<UIView>()
    .backgroundColor(.white)
    .roundedCorners(8)
    .shadow()
    .apply(to: cardView)
```

## Requirements

- iOS 11.0+
- Swift 5.0+
- Xcode 12.0+

## Contributing

Contributions are welcome! Please follow these guidelines:

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/amazing-feature`)
3. Make your changes and add tests
4. Ensure all tests pass
5. Commit your changes (`git commit -m 'Add amazing feature'`)
6. Push to the branch (`git push origin feature/amazing-feature`)
7. Open a Pull Request


## Author

Created by Thinh, Nguyen - Email: thinhnguyen12389@gmail.com

## License

TStyle is available under the MIT license. See the LICENSE file for more info.

## Acknowledgments

- Inspired by SwiftUI's declarative syntax
- Built for UIKit developers who want cleaner styling code
- Thanks to the iOS development community for feedback and suggestions
