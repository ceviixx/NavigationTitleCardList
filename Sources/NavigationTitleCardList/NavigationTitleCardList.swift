//
//  NavigationTitleCard.swift
//  NavigationTitleCard
//
//  Created by ceviixx on 27.04.25.
//

import SwiftUI

public struct NavigationTitleCardList<Content: View>: View {
    
    @State internal var inlineTitleOpacity: Double = 0
    @State internal var scrollTopEdgeInset: Double = 0
    
    internal var contentConfiguration: ContentConfiguration?
    internal var apperanceStyle: ApperanceStyle = .default
    
    internal var headerActionContent: (() -> AnyView)? = { AnyView(EmptyView()) }
    internal var content: () -> Content
    
    public var body: some View {
        List {
            if case let .default(image, title, subtitle) = contentConfiguration {
                Section {
                    DefaultHeaderView(image: image, title: title, subtitle: subtitle)
                    
                    if let headerActionContent {
                        headerActionContent()
                    }
                }
            } else if case let .custom(_, content) = contentConfiguration {
                AnyView(content)
                    .onGeometryChange(for: Double.self) { proxy in
                        proxy.frame(in: .scrollView).minY
                    } action: { minY in
                        inlineTitleOpacity = calculateOpacity(minY: minY, threshold: 200)
                    }
            }
            content()
        }
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            if let title = contentConfiguration?.title {
                ToolbarItem(placement: .principal) {
                    Text(title)
                        .font(.body.bold())
                        .fontDesign(.rounded)
                        .dynamicTypeSize(.large ... .xxxLarge)
                        .opacity(inlineTitleOpacity)
                }
            }
        }
        .onScrollGeometryChange(for: Double.self, of: { geometry in
            geometry.contentInsets.top
        }, action: { oldValue, newValue in
            scrollTopEdgeInset = newValue
        })
    }
    
    private func DefaultHeaderView(image: ImageType, title: String, subtitle: String) -> some View {
        VStack(spacing: 8) {
            makeImage(from: image)

            Text(title)
                .font(.title3.bold())
                .foregroundStyle(apperanceStyle.titleForeground)
                .onGeometryChange(for: Double.self) { proxy in
                    proxy.frame(in: .scrollView).minY
                } action: { minY in
                    inlineTitleOpacity = calculateOpacity(minY: minY)
                }

            Text(subtitle)
                .font(.system(size: 14))
                .fontWeight(.light)
                .foregroundColor(apperanceStyle.subtitlesForeground)
                .multilineTextAlignment(.center)
        }
        .multilineTextAlignment(.center)
        .padding(.vertical)
        .frame(maxWidth: .infinity)
    }
    
    private func makeImage(from image: ImageType) -> some View {
        Group {
            switch image {
            case .system(let name):
                Image(systemName: name)
                    .font(.system(size: 40))
            case .custom(let name):
                Image(name)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            }
        }
        .frame(width: 60, height: 60)
        .foregroundColor(apperanceStyle.iconForeground)
        .background(apperanceStyle.iconBackground)
        .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
    }
    
    private func calculateOpacity(minY: Double, threshold: Double = 20) -> Double {
        min(1, max(0, (scrollTopEdgeInset - minY) / threshold))
    }
    
}

#Preview {
    NavigationView {
        NavigationTitleCardList(systemImage: "gear", title: "Settings", subtitle: "Manage your app settings.") {
            NavigationLink {
                NavigationTitleCardList(systemImage: "person.fill", title: "Profile", subtitle: "Here you can view and manage your profile details and access common settings.") {
                    
                    // Actions Section
                    Section {
                        NavigationLink(destination: Text("Settings")) {
                            Label("Settings", systemImage: "gearshape")
                        }
                        NavigationLink(destination: Text("Notifications")) {
                            Label("Notifications", systemImage: "bell")
                        }
                        NavigationLink(destination: Text("Help & Support")) {
                            Label("Help & Support", systemImage: "questionmark.circle")
                        }
                        Button(action: {
                            // Handle logout action
                        }) {
                            Label("Logout", systemImage: "arrow.backward.circle")
                                .foregroundColor(.red)
                        }
                    }
                    
                    
                    // Additional Actions
                    NavigationLink(destination: Text("Privacy & Security")) {
                        Label("Privacy & Security", systemImage: "lock.shield")
                    }
                    NavigationLink(destination: Text("Change Password")) {
                        Label("Change Password", systemImage: "key.fill")
                    }
                    NavigationLink(destination: Text("Subscription")) {
                        Label("Subscription", systemImage: "creditcard.fill")
                    }
                    NavigationLink(destination: Text("Language")) {
                        Label("Language", systemImage: "globe")
                    }
                    
                    
                }
            } label: {
                Text("Demo")
            }

        }
    }
    .sheet(isPresented: .constant(false)) {
        NavigationView {
            NavigationTitleCardList(systemImage: "gear", title: "Settings", subtitle: "Manage your app settings.") {
                NavigationLink {
                    NavigationTitleCardList(systemImage: "person.fill", title: "Profile", subtitle: "Here you can view and manage your profile details and access common settings.") {
                        
                        // Actions Section
                        Section {
                            NavigationLink(destination: Text("Settings")) {
                                Label("Settings", systemImage: "gearshape")
                            }
                            NavigationLink(destination: Text("Notifications")) {
                                Label("Notifications", systemImage: "bell")
                            }
                            NavigationLink(destination: Text("Help & Support")) {
                                Label("Help & Support", systemImage: "questionmark.circle")
                            }
                            Button(action: {
                                // Handle logout action
                            }) {
                                Label("Logout", systemImage: "arrow.backward.circle")
                                    .foregroundColor(.red)
                            }
                        }
                        
                        
                        // Additional Actions
                        NavigationLink(destination: Text("Privacy & Security")) {
                            Label("Privacy & Security", systemImage: "lock.shield")
                        }
                        NavigationLink(destination: Text("Change Password")) {
                            Label("Change Password", systemImage: "key.fill")
                        }
                        NavigationLink(destination: Text("Subscription")) {
                            Label("Subscription", systemImage: "creditcard.fill")
                        }
                        NavigationLink(destination: Text("Language")) {
                            Label("Language", systemImage: "globe")
                        }
                        
                        
                    }
                } label: {
                    Text("Demo")
                }

            }
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Image(systemName: "xmark.circle.fill")
                        .symbolRenderingMode(.palette)
                        .foregroundStyle(Color.primary, Color.secondary.opacity(0.3))
                }
            }
        }
    }
}
