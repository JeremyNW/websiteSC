// swift-tools-version:5.2

import PackageDescription

let package = Package(
    name: "JeremyNW",
    products: [
        .executable(
            name: "JeremyNW",
            targets: ["JeremyNW"]
        )
    ],
    dependencies: [
        .package(name: "MacrinaSites", url: "https://github.com/MacrinaLLC/MacrinaSites.git", .branch("master"))
    ],
    targets: [
        .target(
            name: "JeremyNW",
            dependencies: ["MacrinaSites"]
        )
    ]
)
