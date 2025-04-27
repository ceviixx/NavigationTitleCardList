//
//  ContentConfiguration.swift
//  NavigationTitleCard
//
//  Created by ceviixx on 27.04.25.
//

import SwiftUI

// MARK: - ImageType

/// Represents the type of image used in the header, either system (SF Symbol) or custom.
enum ImageType {
    
    /// A system image (SF Symbol) provided by Apple.
    case system(String)
    
    /// A custom image, typically from the asset catalog.
    case custom(String)
}

// MARK: - ContentConfiguration

/// Represents the configuration of a navigation title card.
enum ContentConfiguration {
    
    /// The default configuration with an image, a title, and a subtitle.
    ///
    /// - Parameters:
    ///   - image: The image type used (system or custom).
    ///   - title: The main title text.
    ///   - subtitle: The subtitle text.
    case `default`(
        image: ImageType,
        title: String,
        subtitle: String
    )
    
    /// A custom configuration with a title and a custom header view.
    ///
    /// - Parameters:
    ///   - title: The main title text.
    ///   - content: A custom view that replaces the default image and subtitle.
    case `custom`(
        title: String,
        content: AnyView
    )
}

// MARK: - Extension for ContentConfiguration

extension ContentConfiguration {
    
    /// The title text used in the configuration.
    ///
    /// This property returns the title regardless of whether the configuration is `.default` or `.custom`.
    var title: String {
        switch self {
        case .default(_, let title, _):
            return title
        case .custom(let title, _):
            return title
        }
    }
}
