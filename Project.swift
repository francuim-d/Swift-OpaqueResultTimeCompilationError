import ProjectDescription
import ProjectDescriptionHelpers

let settings = Settings.withCustomConfigurations()
let schemes = [
    Scheme.scheme(name: "Dev", targetName: Constants.name),
    Scheme.scheme(name: "Prod", targetName: Constants.name)
]

let appTarget = Target(
    name: Constants.name,
    platform: .iOS,
    product: .app,
    productName: Constants.name,
    bundleId: Constants.bundleID,
    deploymentTarget: .iOS(targetVersion: "13.0", devices: .iphone),
    infoPlist: .file(path: "\(Constants.name)/App/Info.plist"),
    sources: ["\(Constants.name)/**/*.swift"],
    resources: ["\(Constants.name)/Resources/**"],
    copyFiles: nil,
    headers: nil,
    entitlements: nil,
    scripts: [],
    dependencies: [
        .featureModule(name: "Checks")
    ],
    settings: nil,
    coreDataModels: [],
    environment: [:],
    launchArguments: [],
    additionalFiles: []
)

let project = Project(
    name: Constants.name,
    organizationName: Constants.organizationName,
    options: .options(
        automaticSchemesOptions: .disabled,
        developmentRegion: Constants.developmentRegion,
        textSettings: .textSettings(usesTabs: false, indentWidth: 4, wrapsLines: true),
        xcodeProjectName: Constants.name
    ),
    packages: [],
    settings: settings,
    targets: [appTarget],
    schemes: schemes,
    fileHeaderTemplate: nil,
    additionalFiles: [.glob(pattern: .relativeToRoot("Configurations/Config.xcconfig"))],
    resourceSynthesizers: [.strings(), .assets()]
)
