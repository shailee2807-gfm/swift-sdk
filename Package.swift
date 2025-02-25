// swift-tools-version: 6.0
import PackageDescription

let package = Package(
    name: "descope-swift-sdk", // This is the package identifier
    platforms: [
        .iOS(.v13),
        .macOS(.v12),
    ],
    products: [
        .library(
            name: "DescopeKit", // This keeps your import statement unchanged
            targets: ["DescopeKit"]),
    ],
    targets: [
        .target(
            name: "DescopeKit", // Keep this so you can use `import DescopeKit`
            path: "src",
            exclude: ["sdk/Callbacks.stencil"]),
        .testTarget(
            name: "DescopeKitTests",
            dependencies: ["DescopeKit"],
            path: "test"),
    ]
)
