//
//  ApperanceStyle.swift
//  NavigationTitleCard
//
//  Created by ceviixx on 27.04.25.
//

import SwiftUI

/// Describes the visual appearance style for a component.
enum ApperanceStyle {
    
    /// Uses the default appearance:
    /// - Icon background: `accentColor`
    /// - Icon foreground: `white`
    /// - Text colors: `primary`
    case `default`
    
    /// Uses a custom appearance style with configurable icon and text colors.
    ///
    /// - Parameters:
    ///   - icon: Foreground and background colors for the icon.
    ///   - text: Foreground colors for the title and subtitle.
    case `custom`(
        icon: ColorPair,
        text: TextPair
    )
    
    // MARK: - Init
    
    /// Initializes with the default appearance.
    public init() {
        self = .default
    }
}

extension ApperanceStyle {
    
    // MARK: - Computed Properties
    
    /// The background color used for the icon.
    var iconBackground: Color {
        switch self {
        case .default:
            return Color.accentColor
        case .custom(let icon, _):
            return icon.background
        }
    }
    
    /// The foreground color used for the icon.
    var iconForeground: Color {
        switch self {
        case .default:
            return Color.white
        case .custom(let icon, _):
            return icon.foreground
        }
    }
    
    /// The foreground color used for the title text.
    var titleForeground: Color {
        switch self {
        case .default:
            return Color.primary
        case .custom(_, let text):
            return text.title
        }
    }
    
    /// The foreground color used for the subtitle text.
    var subtitlesForeground: Color {
        switch self {
        case .default:
            return Color.primary
        case .custom(_, let text):
            return text.subtitle
        }
    }
}
