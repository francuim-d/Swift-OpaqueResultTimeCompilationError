import ProjectDescription

public extension Target {
    static func featureModule(
        name: String,
        dependencies: [TargetDependency] = []
    ) -> Target {
        Target(
            name: name,
            platform: .iOS,
            product: .framework,
            bundleId: "\(Constants.bundleID)-\(name)",
            deploymentTarget: .iOS(targetVersion: "13.0", devices: .iphone),
            sources: [
                .glob(.relativeToRoot("Modules/FeatureModules/\(name)/Sources/**/*.swift"))
            ],
            resources: [
                .glob(pattern: .relativeToRoot("Modules/FeatureModules/\(name)/**/Resources/**"))
            ],
            dependencies: []
        )
    }

    static func module(name: String, dependencies: [TargetDependency] = []) -> Target {
        Target(
            name: name,
            platform: .iOS,
            product: .framework,
            bundleId: "\(Constants.bundleID)-\(name)",
            deploymentTarget: .iOS(targetVersion: "13.0", devices: .iphone),
            sources: [.glob(.relativeToRoot("Modules/\(name)/Sources/**/*.swift"))],
            dependencies: dependencies
        )
    }
}
