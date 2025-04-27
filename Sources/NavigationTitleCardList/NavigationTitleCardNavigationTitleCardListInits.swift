//
//  NavigationTitleCardInits.swift
//  NavigationTitleCard
//
//  Created by ceviixx on 27.04.25.
//

import SwiftUI

extension NavigationTitleCardList {

    /// Creates a new view with a system image, title, subtitle, and custom content.
    ///
    /// - Parameters:
    ///   - systemImage: The name of the SF Symbol (e.g., `"star.fill"`) to display.
    ///   - title: The main title displayed above the content.
    ///   - subtitle: The subtitle displayed below the title.
    ///   - content: A `@ViewBuilder` closure that produces the custom view content.
    public init(
        systemImage: String,
        title: String,
        subtitle: String,
        @ViewBuilder content: @escaping () -> Content
    ) {
        self.contentConfiguration = .default(
            image: .system(systemImage),
            title: title,
            subtitle: subtitle
        )
        self.content = content
    }

    
    /// Creates a new view with a system image, title, subtitle, custom content, and a header action view.
    ///
    /// - Parameters:
    ///   - systemImage: The name of the SF Symbol (e.g., `"star.fill"`) to display.
    ///   - title: The main title displayed above the content.
    ///   - subtitle: The subtitle displayed below the title.
    ///   - content: A `@ViewBuilder` closure that produces the custom view content.
    ///   - headerActionView: A `@ViewBuilder` closure that produces a view for header actions (e.g., buttons).
    public init(
        systemImage: String,
        title: String,
        subtitle: String,
        @ViewBuilder content: @escaping () -> Content,
        @ViewBuilder headerActionView: @escaping () -> some View
    ) {
        self.contentConfiguration = .default(
            image: .system(systemImage),
            title: title,
            subtitle: subtitle
        )
        self.content = content
        self.headerActionContent = { AnyView(headerActionView()) }
    }
    
    
    /// Creates a new view with a custom image asset, title, subtitle, and custom content.
    ///
    /// - Parameters:
    ///   - image: The name of the custom image asset (e.g., `"myImage"`) to display.
    ///   - title: The main title displayed above the content.
    ///   - subtitle: The subtitle displayed below the title.
    ///   - content: A `@ViewBuilder` closure that produces the custom view content.
    public init(
        image: String,
        title: String,
        subtitle: String,
        @ViewBuilder content: @escaping () -> Content
    ) {
        self.contentConfiguration = .default(
            image: .custom(image),
            title: title,
            subtitle: subtitle
        )
        self.content = content
    }
    
    
    /// Creates a new view with a custom image asset, title, subtitle, custom content, and a header action view.
    ///
    /// - Parameters:
    ///   - image: The name of the custom image asset (e.g., `"myImage"`) to display.
    ///   - title: The main title displayed above the content.
    ///   - subtitle: The subtitle displayed below the title.
    ///   - content: A `@ViewBuilder` closure that produces the custom view content.
    ///   - headerActionView: A `@ViewBuilder` closure that produces a view for header actions (e.g., buttons).
    public init(
        image: String,
        title: String,
        subtitle: String,
        @ViewBuilder content: @escaping () -> Content,
        @ViewBuilder headerActionView: @escaping () -> some View
    ) {
        self.contentConfiguration = .default(
            image: .custom(image),
            title: title,
            subtitle: subtitle
        )
        self.content = content
        self.headerActionContent = { AnyView(headerActionView()) }
    }
    
    
    /// Creates a new view with a custom header and content.
    ///
    /// - Parameters:
    ///   - title: The title displayed in the header view.
    ///   - header: An `AnyView` representing the custom header content (e.g., an icon or custom layout).
    ///   - content: A `@ViewBuilder` closure that produces the main view content.
    public init(
        title: String,
        header: AnyView,
        @ViewBuilder content: @escaping () -> Content
    ) {
        self.contentConfiguration = .custom(title: title, content: header)
        self.content = content
    }
    
    
    /// Creates a new view with a custom header, title, main content, and a header action view.
    ///
    /// - Parameters:
    ///   - title: The title displayed in the header section.
    ///   - header: An `AnyView` representing the custom header content (e.g., an icon or custom layout).
    ///   - content: A `@ViewBuilder` closure that produces the main view content.
    ///   - headerActionView: A `@ViewBuilder` closure that produces a view for header actions (e.g., buttons).
    public init(
        title: String,
        header: AnyView,
        @ViewBuilder content: @escaping () -> Content,
        @ViewBuilder headerActionView: @escaping () -> some View
    ) {
        self.contentConfiguration = .custom(title: title, content: header)
        self.content = content
        self.headerActionContent = { AnyView(headerActionView()) }
    }
    
    
    /// Creates a new view with a system image, title, subtitle, custom icon colors, and custom content.
    ///
    /// - Parameters:
    ///   - systemImage: The name of the SF Symbol (e.g., `"star.fill"`) to display.
    ///   - title: The main title displayed above the content.
    ///   - subtitle: The subtitle displayed below the title.
    ///   - iconBackground: The background `Color` for the system image icon.
    ///   - iconForeground: The foreground `Color` for the system image icon.
    ///   - content: A `@ViewBuilder` closure that produces the custom view content.
    public init(
        systemImage: String,
        title: String,
        subtitle: String,
        iconBackground: Color,
        iconForeground: Color,
        @ViewBuilder content: @escaping () -> Content
    ) {
        self.contentConfiguration = .default(
            image: .system(systemImage),
            title: title,
            subtitle: subtitle
        )
        self.apperanceStyle = .custom(
            icon: .init(foreground: iconForeground, background: iconBackground),
            text: .init()
        )
        self.content = content
    }
    
    
    /// Creates a new view with a system image, title, subtitle, custom icon colors, custom content, and a header action view.
    ///
    /// - Parameters:
    ///   - systemImage: The name of the SF Symbol (e.g., `"star.fill"`) to display.
    ///   - title: The main title displayed above the content.
    ///   - subtitle: The subtitle displayed below the title.
    ///   - iconBackground: The background `Color` for the system image icon.
    ///   - iconForeground: The foreground `Color` for the system image icon.
    ///   - content: A `@ViewBuilder` closure that produces the custom view content.
    ///   - headerActionView: A `@ViewBuilder` closure that produces a view for header actions (e.g., buttons).
    public init(
        systemImage: String,
        title: String,
        subtitle: String,
        iconBackground: Color,
        iconForeground: Color,
        @ViewBuilder content: @escaping () -> Content,
        @ViewBuilder headerActionView: @escaping () -> some View
    ) {
        self.contentConfiguration = .default(
            image: .system(systemImage),
            title: title,
            subtitle: subtitle
        )
        self.apperanceStyle = .custom(
            icon: .init(foreground: iconForeground, background: iconBackground),
            text: .init()
        )
        self.content = content
        self.headerActionContent = { AnyView(headerActionView()) }
    }

    
    /// Creates a new view with a system image, title, subtitle, custom icon background color, and custom content.
    ///
    /// - Parameters:
    ///   - systemImage: The name of the SF Symbol (e.g., `"star.fill"`) to display.
    ///   - title: The main title displayed above the content.
    ///   - subtitle: The subtitle displayed below the title.
    ///   - iconBackground: The background `Color` for the system image icon.
    ///   - content: A `@ViewBuilder` closure that produces the custom view content.
    public init(
        systemImage: String,
        title: String,
        subtitle: String,
        iconBackground: Color,
        @ViewBuilder content: @escaping () -> Content
    ) {
        self.contentConfiguration = .default(
            image: .system(systemImage),
            title: title,
            subtitle: subtitle
        )
        self.apperanceStyle = .custom(
            icon: .init(background: iconBackground),
            text: .init()
        )
        self.content = content
    }
    
    
    /// Creates a new view with a system image, title, subtitle, custom icon background color, custom content, and a header action view.
    ///
    /// - Parameters:
    ///   - systemImage: The name of the SF Symbol (e.g., `"star.fill"`) to display.
    ///   - title: The main title displayed above the content.
    ///   - subtitle: The subtitle displayed below the title.
    ///   - iconBackground: The background `Color` for the system image icon.
    ///   - content: A `@ViewBuilder` closure that produces the custom view content.
    ///   - headerActionView: A `@ViewBuilder` closure that produces a view for header actions (e.g., buttons).
    public init(
        systemImage: String,
        title: String,
        subtitle: String,
        iconBackground: Color,
        @ViewBuilder content: @escaping () -> Content,
        @ViewBuilder headerActionView: @escaping () -> some View
    ) {
        self.contentConfiguration = .default(
            image: .system(systemImage),
            title: title,
            subtitle: subtitle
        )
        self.apperanceStyle = .custom(
            icon: .init(background: iconBackground),
            text: .init()
        )
        self.content = content
        self.headerActionContent = { AnyView(headerActionView()) }
    }

    
    /// Creates a new view with a custom image asset, title, subtitle, custom icon background color, and custom content.
    ///
    /// - Parameters:
    ///   - image: The name of the custom image asset (e.g., `"myImage"`) to display.
    ///   - title: The main title displayed above the content.
    ///   - subtitle: The subtitle displayed below the title.
    ///   - iconBackground: The background `Color` for the custom image icon.
    ///   - content: A `@ViewBuilder` closure that produces the custom view content.
    public init(
        image: String,
        title: String,
        subtitle: String,
        iconBackground: Color,
        @ViewBuilder content: @escaping () -> Content
    ) {
        self.contentConfiguration = .default(
            image: .custom(image),
            title: title,
            subtitle: subtitle
        )
        self.apperanceStyle = .custom(
            icon: .init(background: iconBackground),
            text: .init()
        )
        self.content = content
    }
    
    
    /// Creates a new view with a custom image asset, title, subtitle, custom icon background color, custom content, and a header action view.
    ///
    /// - Parameters:
    ///   - image: The name of the custom image asset (e.g., `"myImage"`) to display.
    ///   - title: The main title displayed above the content.
    ///   - subtitle: The subtitle displayed below the title.
    ///   - iconBackground: The background `Color` for the custom image icon.
    ///   - content: A `@ViewBuilder` closure that produces the custom view content.
    ///   - headerActionView: A `@ViewBuilder` closure that produces a view for header actions (e.g., buttons).
    public init(
        image: String,
        title: String,
        subtitle: String,
        iconBackground: Color,
        @ViewBuilder content: @escaping () -> Content,
        @ViewBuilder headerActionView: @escaping () -> some View
    ) {
        self.contentConfiguration = .default(
            image: .custom(image),
            title: title,
            subtitle: subtitle
        )
        self.apperanceStyle = .custom(
            icon: .init(background: iconBackground),
            text: .init()
        )
        self.content = content
        self.headerActionContent = { AnyView(headerActionView()) }
    }
    
    
    /// Creates a new view with a custom image asset, title, subtitle, custom icon colors, and custom content.
    ///
    /// - Parameters:
    ///   - image: The name of the custom image asset (e.g., `"myImage"`) to display.
    ///   - title: The main title displayed above the content.
    ///   - subtitle: The subtitle displayed below the title.
    ///   - iconBackground: The background `Color` for the custom image icon.
    ///   - iconForeground: The foreground `Color` for the custom image icon.
    ///   - content: A `@ViewBuilder` closure that produces the custom view content.
    public init(
        image: String,
        title: String,
        subtitle: String,
        iconBackground: Color,
        iconForeground: Color,
        @ViewBuilder content: @escaping () -> Content
    ) {
        self.contentConfiguration = .default(
            image: .custom(image),
            title: title,
            subtitle: subtitle
        )
        self.apperanceStyle = .custom(
            icon: .init(foreground: iconForeground, background: iconBackground),
            text: .init()
        )
        self.content = content
    }
    
    
    /// Creates a new view with a custom image asset, title, subtitle, custom icon colors, custom content, and a header action view.
    ///
    /// - Parameters:
    ///   - image: The name of the custom image asset (e.g., `"myImage"`) to display.
    ///   - title: The main title displayed above the content.
    ///   - subtitle: The subtitle displayed below the title.
    ///   - iconBackground: The background `Color` for the custom image icon.
    ///   - iconForeground: The foreground `Color` for the custom image icon.
    ///   - content: A `@ViewBuilder` closure that produces the custom view content.
    ///   - headerActionView: A `@ViewBuilder` closure that produces a view for header actions (e.g., buttons).
    public init(
        image: String,
        title: String,
        subtitle: String,
        iconBackground: Color,
        iconForeground: Color,
        @ViewBuilder content: @escaping () -> Content,
        @ViewBuilder headerActionView: @escaping () -> some View
    ) {
        self.contentConfiguration = .default(
            image: .custom(image),
            title: title,
            subtitle: subtitle
        )
        self.apperanceStyle = .custom(
            icon: .init(foreground: iconForeground, background: iconBackground),
            text: .init()
        )
        self.content = content
        self.headerActionContent = { AnyView(headerActionView()) }
    }
    
    
    /// Creates a new view with a system image, title, subtitle, custom title/subtitle text colors, and custom content.
    ///
    /// - Parameters:
    ///   - systemImage: The name of the SF Symbol (e.g., `"star.fill"`) to display as the icon.
    ///   - title: The main title text displayed above the content.
    ///   - subtitle: The subtitle text displayed below the title.
    ///   - titleForeground: The `Color` used for the title text.
    ///   - subtitleForeground: The `Color` used for the subtitle text.
    ///   - content: A `@ViewBuilder` closure that produces the custom view content.
    public init(
        systemImage: String,
        title: String,
        subtitle: String,
        titleForeground: Color,
        subtitleForeground: Color,
        @ViewBuilder content: @escaping () -> Content
    ) {
        self.contentConfiguration = .default(
            image: .system(systemImage),
            title: title,
            subtitle: subtitle
        )
        self.apperanceStyle = .custom(
            icon: .init(),
            text: .init(title: titleForeground, subtitle: subtitleForeground)
        )
        self.content = content
    }
    
    
    
    /// Creates a new view with a system image, title, subtitle, custom title/subtitle text colors, custom content, and a header action view.
    ///
    /// - Parameters:
    ///   - systemImage: The name of the SF Symbol (e.g., `"star.fill"`) to display as the icon.
    ///   - title: The main title text displayed above the content.
    ///   - subtitle: The subtitle text displayed below the title.
    ///   - titleForeground: The `Color` used for the title text.
    ///   - subtitleForeground: The `Color` used for the subtitle text.
    ///   - content: A `@ViewBuilder` closure that produces the custom view content.
    ///   - headerActionView: A `@ViewBuilder` closure that produces a view for header actions (e.g., buttons).
    public init(
        systemImage: String,
        title: String,
        subtitle: String,
        titleForeground: Color,
        subtitleForeground: Color,
        @ViewBuilder content: @escaping () -> Content,
        @ViewBuilder headerActionView: @escaping () -> some View
    ) {
        self.contentConfiguration = .default(
            image: .system(systemImage),
            title: title,
            subtitle: subtitle
        )
        self.apperanceStyle = .custom(
            icon: .init(),
            text: .init(title: titleForeground, subtitle: subtitleForeground)
        )
        self.content = content
        self.headerActionContent = { AnyView(headerActionView()) }
    }
    
    
    /// Creates a new view with a custom image asset, title, subtitle, custom title/subtitle text colors, and custom content.
    ///
    /// - Parameters:
    ///   - image: The name of the custom image asset (e.g., `"myImage"`) to display as the icon.
    ///   - title: The main title text displayed above the content.
    ///   - subtitle: The subtitle text displayed below the title.
    ///   - titleForeground: The `Color` used for the title text.
    ///   - subtitleForeground: The `Color` used for the subtitle text.
    ///   - content: A `@ViewBuilder` closure that produces the custom view content.
    public init(
        image: String,
        title: String,
        subtitle: String,
        titleForeground: Color,
        subtitleForeground: Color,
        @ViewBuilder content: @escaping () -> Content
    ) {
        self.contentConfiguration = .default(
            image: .custom(image),
            title: title,
            subtitle: subtitle
        )
        self.apperanceStyle = .custom(
            icon: .init(),
            text: .init(title: titleForeground, subtitle: subtitleForeground)
        )
        self.content = content
    }
    
    
    /// Creates a new view with a custom image asset, title, subtitle, custom title/subtitle text colors, custom content, and a header action view.
    ///
    /// - Parameters:
    ///   - image: The name of the custom image asset (e.g., `"myImage"`) to display as the icon.
    ///   - title: The main title text displayed above the content.
    ///   - subtitle: The subtitle text displayed below the title.
    ///   - titleForeground: The `Color` used for the title text.
    ///   - subtitleForeground: The `Color` used for the subtitle text.
    ///   - content: A `@ViewBuilder` closure that produces the custom view content.
    ///   - headerActionView: A `@ViewBuilder` closure that produces a view for header actions (e.g., buttons).
    public init(
        image: String,
        title: String,
        subtitle: String,
        titleForeground: Color,
        subtitleForeground: Color,
        @ViewBuilder content: @escaping () -> Content,
        @ViewBuilder headerActionView: @escaping () -> some View
    ) {
        self.contentConfiguration = .default(
            image: .custom(image),
            title: title,
            subtitle: subtitle
        )
        self.apperanceStyle = .custom(
            icon: .init(),
            text: .init(title: titleForeground, subtitle: subtitleForeground)
        )
        self.content = content
        self.headerActionContent = { AnyView(headerActionView()) }
    }
    
    
    /// Creates a new view with a system image, title, subtitle, custom icon colors, custom text colors, and custom content.
    ///
    /// - Parameters:
    ///   - systemImage: The name of the SF Symbol (e.g., `"star.fill"`) to display as the icon.
    ///   - title: The main title text displayed above the content.
    ///   - subtitle: The subtitle text displayed below the title.
    ///   - iconBackground: The `Color` used for the icon’s background.
    ///   - iconForeground: The `Color` used for the icon’s foreground.
    ///   - titleForeground: The `Color` used for the title text.
    ///   - subtitleForeground: The `Color` used for the subtitle text.
    ///   - content: A `@ViewBuilder` closure that produces the custom view content.
    public init(
        systemImage: String,
        title: String,
        subtitle: String,
        iconBackground: Color,
        iconForeground: Color,
        titleForeground: Color,
        subtitleForeground: Color,
        @ViewBuilder content: @escaping () -> Content
    ) {
        self.contentConfiguration = .default(
            image: .system(systemImage),
            title: title,
            subtitle: subtitle
        )
        self.apperanceStyle = .custom(
            icon: .init(foreground: iconForeground, background: iconBackground),
            text: .init(title: titleForeground, subtitle: subtitleForeground)
        )
        self.content = content
    }
    
    
    /// Creates a new view with a system image, title, subtitle, custom icon and text colors, custom content, and a header action view.
    ///
    /// - Parameters:
    ///   - systemImage: The name of the SF Symbol (e.g., `"star.fill"`) to display as the icon.
    ///   - title: The main title text displayed above the content.
    ///   - subtitle: The subtitle text displayed below the title.
    ///   - iconBackground: The `Color` used for the icon’s background.
    ///   - iconForeground: The `Color` used for the icon’s foreground.
    ///   - titleForeground: The `Color` used for the title text.
    ///   - subtitleForeground: The `Color` used for the subtitle text.
    ///   - content: A `@ViewBuilder` closure that produces the custom view content.
    ///   - headerActionView: A `@ViewBuilder` closure that produces a view for header actions (e.g., buttons).
    public init(
        systemImage: String,
        title: String,
        subtitle: String,
        iconBackground: Color,
        iconForeground: Color,
        titleForeground: Color,
        subtitleForeground: Color,
        @ViewBuilder content: @escaping () -> Content,
        @ViewBuilder headerActionView: @escaping () -> some View
    ) {
        self.contentConfiguration = .default(
            image: .system(systemImage),
            title: title,
            subtitle: subtitle
        )
        self.apperanceStyle = .custom(
            icon: .init(foreground: iconForeground, background: iconBackground),
            text: .init(title: titleForeground, subtitle: subtitleForeground)
        )
        self.content = content
        self.headerActionContent = { AnyView(headerActionView()) }
    }
    
    
    /// Creates a new view with a custom image asset, title, subtitle, custom icon colors, custom text colors, and custom content.
    ///
    /// - Parameters:
    ///   - image: The name of the custom image asset (e.g., `"myImage"`) to display as the icon.
    ///   - title: The main title text displayed above the content.
    ///   - subtitle: The subtitle text displayed below the title.
    ///   - iconBackground: The `Color` used for the icon’s background.
    ///   - iconForeground: The `Color` used for the icon’s foreground.
    ///   - titleForeground: The `Color` used for the title text.
    ///   - subtitleForeground: The `Color` used for the subtitle text.
    ///   - content: A `@ViewBuilder` closure that produces the custom view content.
    public init(
        image: String,
        title: String,
        subtitle: String,
        iconBackground: Color,
        iconForeground: Color,
        titleForeground: Color,
        subtitleForeground: Color,
        @ViewBuilder content: @escaping () -> Content
    ) {
        self.contentConfiguration = .default(
            image: .custom(image),
            title: title,
            subtitle: subtitle
        )
        self.apperanceStyle = .custom(
            icon: .init(foreground: iconForeground, background: iconBackground),
            text: .init(title: titleForeground, subtitle: subtitleForeground)
        )
        self.content = content
    }
    
    
    /// Creates a new view with a custom image asset, title, subtitle, custom icon and text colors, custom content, and a header action view.
    ///
    /// - Parameters:
    ///   - image: The name of the custom image asset (e.g., `"myImage"`) to display as the icon.
    ///   - title: The main title text displayed above the content.
    ///   - subtitle: The subtitle text displayed below the title.
    ///   - iconBackground: The `Color` used for the icon’s background.
    ///   - iconForeground: The `Color` used for the icon’s foreground.
    ///   - titleForeground: The `Color` used for the title text.
    ///   - subtitleForeground: The `Color` used for the subtitle text.
    ///   - content: A `@ViewBuilder` closure that produces the custom view content.
    ///   - headerActionView: A `@ViewBuilder` closure that produces a view for header actions (e.g., buttons).
    public init(
        image: String,
        title: String,
        subtitle: String,
        iconBackground: Color,
        iconForeground: Color,
        titleForeground: Color,
        subtitleForeground: Color,
        @ViewBuilder content: @escaping () -> Content,
        @ViewBuilder headerActionView: @escaping () -> some View
    ) {
        self.contentConfiguration = .default(
            image: .custom(image),
            title: title,
            subtitle: subtitle
        )
        self.apperanceStyle = .custom(
            icon: .init(foreground: iconForeground, background: iconBackground),
            text: .init(title: titleForeground, subtitle: subtitleForeground)
        )
        self.content = content
        self.headerActionContent = { AnyView(headerActionView()) }
    }
    
}
