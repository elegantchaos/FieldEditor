// swift-tools-version:5.7

// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
//  Created by Sam Deane on 11/10/2022.
//  All code (c) 2022 - present day, Sam Deane.
// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

import PackageDescription

let package = Package(
    name: "FieldEditor",

    platforms: [
        .macOS(.v13), .macCatalyst(.v16), .iOS(.v16), .tvOS(.v16), .watchOS(.v9)
    ],

    products: [
        .library(
            name: "FieldEditor",
            targets: ["FieldEditor"]
        ),
    ],
    
    dependencies: [
        // testing support
        .package(url: "https://github.com/elegantchaos/XCTestExtensions.git", from: "1.4.2"),
        
        // tools
        .package(url: "https://github.com/elegantchaos/ActionBuilderPlugin.git", from: "1.0.7"),
        .package(url: "https://github.com/elegantchaos/SwiftFormatterPlugin.git", from: "1.0.3"),
    ],
    
    targets: [
        .target(
            name: "FieldEditor",
            dependencies: [
            ]
        ),
        
        .testTarget(
            name: "FieldEditorTests",
            dependencies: [
                "FieldEditor",
                "XCTestExtensions"
            ]
        ),
    ]
)
