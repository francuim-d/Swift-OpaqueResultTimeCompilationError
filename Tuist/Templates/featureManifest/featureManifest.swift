import ProjectDescription
import ProjectDescriptionHelpers

private let moduleAttribute: Template.Attribute = .required("module")

let featureManifestTemplate = Template(
    description: "Template for generate feature module manifests",
    attributes: [
        moduleAttribute,
    ],
    items: [
        .file(
            path: "Modules/FeatureModules/\(moduleAttribute)/Project.swift",
            templatePath: "Project.stencil"
        )
    ]
)
