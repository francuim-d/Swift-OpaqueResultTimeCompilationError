//
//  MainTabBarControllerFactory.swift
//  Mnogoru
//
//  Created by Денис Кожухарь on 10.08.2022.
//  Copyright © 2022 Spider Group. All rights reserved.
//

import Checks
import UIKit

final class MainTabBarControllerFactory: Factory {
    typealias Context = Any?
    typealias ViewController = MainTabBarViewController

    func build(with context: Context) throws -> ViewController {
        let vc = MainTabBarViewController()
        vc.viewControllers = buildViewControllers()
        return vc
    }

    // MARK: - Private methods

    private func buildViewControllers() -> [UIViewController] {
        MainTabBarIndex.default.compactMap { index in
            switch index {
            case .home:
                return buildViewController(
                    factory: TestViewControllerFactory(),
                    context: (),
                    title: "Title",
                    image: UIImage(),
                    selectedImage: UIImage()
                )
            case .promo:
                return buildViewController(
                    factory: TestViewControllerFactory(),
                    context: (),
                    title: "Title",
                    image: UIImage(),
                    selectedImage: UIImage()
                )
            case .partners:
                return buildViewController(
                    factory: TestViewControllerFactory(),
                    context: (),
                    title: "Title",
                    image: UIImage(),
                    selectedImage: UIImage()
                )
            case .bonus:
                return buildViewController(
                    factory: TestViewControllerFactory(),
                    context: (),
                    title: "Title",
                    image: UIImage(),
                    selectedImage: UIImage()
                )
            case .checks:
                return buildViewController(
                    factory: CheckListFactory(),
                    context: (),
                    title: "Title",
                    image: UIImage(),
                    selectedImage: UIImage()
                )
            }
        }
    }

//    private func buildTabViewController(
//        root: UIViewController?,
//        title: String,
//        image: UIImage,
//        selectedImage: UIImage
//    ) -> UIViewController? {
//        guard let viewController = root else { return nil }
//        let navVC = UINavigationController(rootViewController: viewController)
//        let tabBarItem = UITabBarItem(title: title, image: image, selectedImage: selectedImage)
//        navVC.tabBarItem = tabBarItem
//        return navVC
//    }

    private func buildViewController<F: Factory, Context>(
        factory: F,
        context: Context,
        title: String,
        image: UIImage,
        selectedImage: UIImage
    ) -> UIViewController?
        where F.Context == Context
    {
        guard let vc = try? factory.build(with: context) else { return nil }
        let navVC = UINavigationController(rootViewController: vc)
        let tabBarItem = UITabBarItem(title: title, image: image, selectedImage: selectedImage)
        navVC.tabBarItem = tabBarItem
        return navVC
    }
}
