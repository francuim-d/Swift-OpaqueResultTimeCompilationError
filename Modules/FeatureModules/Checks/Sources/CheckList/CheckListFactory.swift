//
// CheckListFactory.swift
//
// Created by Denis Kozhukhar.
// Copyright © 2022 Spider Group. All rights reserved.
//

import UIKit

public protocol Factory {
    associatedtype ViewController: UIViewController
    associatedtype Context

    func build(with context: Context) throws -> ViewController
}

public final class CheckListFactory: Factory {
    public typealias Context = Void

    public init() {}

    public func build(with context: Context) throws -> some UIViewController {
        CheckListViewController()
    }
}
