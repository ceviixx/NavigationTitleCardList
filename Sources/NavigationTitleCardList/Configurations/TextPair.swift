//
//  TextPair.swift
//  NavigationTitleCard
//
//  Created by ceviixx on 27.04.25.
//

import SwiftUI

/// A structure that defines foreground colors for a title and subtitle text.
struct TextPair {
    
    /// The color used for the title text.
    var title: Color
    
    /// The color used for the subtitle text.
    var subtitle: Color

    // MARK: - Initializers

    /// Creates a `TextPair` with the default colors (`.primary` for both title and subtitle).
    public init() {
        self.title = Color.primary
        self.subtitle = Color.primary
    }

    /// Creates a `TextPair` with a custom title color and default subtitle color.
    ///
    /// - Parameter title: The color for the title text.
    public init(
        title: Color
    ) {
        self.title = title
        self.subtitle = Color.primary
    }

    /// Creates a `TextPair` with a custom subtitle color and default title color.
    ///
    /// - Parameter subtitle: The color for the subtitle text.
    public init(
        subtitle: Color
    ) {
        self.title = Color.primary
        self.subtitle = subtitle
    }

    /// Creates a `TextPair` with custom colors for both title and subtitle.
    ///
    /// - Parameters:
    ///   - title: The color for the title text.
    ///   - subtitle: The color for the subtitle text.
    public init(
        title: Color,
        subtitle: Color
    ) {
        self.title = title
        self.subtitle = subtitle
    }
}
