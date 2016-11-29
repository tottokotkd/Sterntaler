import PackageDescription

let package = Package(
    name: "Sterntaler",
    targets: [
        Target(name: "Table", dependencies: ["Core"])
    ]
)
