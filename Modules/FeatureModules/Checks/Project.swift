import ProjectDescription
import ProjectDescriptionHelpers

let target = Target.featureModule(name: "Checks")
let project = Project.module(name: "Checks", targets: [target])
