//
//  ColorPair.swift
//  NavigationTitleCard
//
//  Created by ceviixx on 27.04.25.
//

import SwiftUI

/// A structure that defines foreground and background colors, typically used for icons.
struct ColorPair {
    
    /// The foreground color, e.g. for the icon symbol.
    var foreground: Color
    
    /// The background color, e.g. behind the icon symbol.
    var background: Color

    // MARK: - Initializers

    /// Creates a `ColorPair` with default colors:
    /// - Foreground: `.white`
    /// - Background: `.accentColor`
    public init() {
        self.foreground = Color.white
        self.background = Color.accentColor
    }

    /// Creates a `ColorPair` with a custom foreground color and default background color (`.accentColor`).
    ///
    /// - Parameter foreground: The foreground color.
    public init(
        foreground: Color
    ) {
        self.foreground = foreground
        self.background = Color.accentColor
    }

    /// Creates a `ColorPair` with a custom background color and default foreground color (`.white`).
    ///
    /// - Parameter background: The background color.
    public init(
        background: Color
    ) {
        self.foreground = Color.white
        self.background = background
    }

    /// Creates a `ColorPair` with custom foreground and background colors.
    ///
    /// - Parameters:
    ///   - foreground: The foreground color.
    ///   - background: The background color.
    public init(
        foreground: Color,
        background: Color
    ) {
        self.foreground = foreground
        self.background = background
    }
}
