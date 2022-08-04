import ProjectDescription
import ProjectDescriptionHelpers

let workspace = Workspace(
    name: Constants.name,
    projects: [
        "//",
        "//Modules/**"
    ],
    generationOptions: .options(
        enableAutomaticXcodeSchemes: false,
        autogeneratedWorkspaceSchemes: .disabled
    )
)
