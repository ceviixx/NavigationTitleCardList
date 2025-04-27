# 🧭 NavigationTitleCardList

`NavigationTitleCardList` is a SwiftUI component that makes it easy to display card-style views with a customizable header — including an icon, title, subtitle, optional header actions, and full control over colors and styling.

Perfect for modern SwiftUI apps that need structured and visually appealing content in a navigation context.

---

## ✨ Features

- 🖼️ Support for **SF Symbols** and **custom images**
- 🎨 Customizable **icon foreground/background colors**
- 📝 Customizable **title and subtitle text colors**
- 🎯 Optional **header action views** (e.g., buttons)
- 💯 100% SwiftUI-native
- 🛠️ Multiple initializers for flexible configuration

---

## 📦 Installation

### Swift Package Manager

In Xcode:
1. Go to `File` > `Add Packages...`
2. Enter the repository URL: https://github.com/ceviixx/NavigationTitleCardList.git
3. Choose the latest version and add the package.

---

## 💡 Example Usage

```swift
import SwiftUI
import NavigationTitleCardKit

struct ExampleView: View {
    var body: some View {
        NavigationView {
            NavigationTitleCardList(
                systemImage: "star.fill",
                title: "Favorites",
                subtitle: "Your top picks",
                iconBackground: .yellow,
                iconForeground: .white
            ) {
                Section {
                    Text("SwiftUI")
                    Text("Swift Packages")
                }
            }
        }
    }
}
```

---

## 🧰 Available Initializers

`NavigationTitleCardList` provides a wide variety of initializers:

- **System Image**
  - ✅ With title, subtitle, and content
  - ➕ Optional header action view
  - 🎨 Optional icon and text color customization

- **Custom Image Asset**
  - ✅ With title, subtitle, and content
  - ➕ Optional header action view
  - 🎨 Optional icon and text color customization

- **Custom Header View**
  - 🧩 Use any `AnyView` as the header
  - ➕ Optional header action view

All initializers include full Xcode-compatible documentation.

