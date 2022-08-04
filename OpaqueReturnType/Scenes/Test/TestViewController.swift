//
//  TestViewController.swift
//  Mnogoru
//
//  Created by Денис Кожухарь on 05.08.2022.
//  Copyright © 2022 Spider Group. All rights reserved.
//

import Checks
import UIKit

final class TestViewControllerFactory: Factory {
    typealias ViewController = TestViewController

    typealias Context = Any?

    func build(with context: Any?) throws -> TestViewController {
        TestViewController()
    }
}

class TestViewController: UIViewController {}
