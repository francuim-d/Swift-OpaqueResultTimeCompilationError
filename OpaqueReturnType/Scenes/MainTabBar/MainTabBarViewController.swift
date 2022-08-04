//
//  MainTabBarViewController.swift
//
//  Created by Денис Кожухарь on 10.08.2022.
//  Copyright © 2022 Spider Group. All rights reserved.
//

import UIKit

enum MainTabBarIndex: Int, CaseIterable {
    case home
    case promo
    case partners
    case bonus
    case checks

    static let `default`: [Self] = Self.allCases
}

class MainTabBarViewController: UITabBarController {}
