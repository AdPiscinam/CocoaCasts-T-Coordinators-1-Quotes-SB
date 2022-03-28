// AppCoordinator.swift
// CocoaCasts-T-Coordinators-1-Quotes-SB
// Created by Ad Piscinam on 28/03/2022
// Copyright © 2022 Code Foundry. All rights reserved.

import UIKit

class AppCoordinator {

    // MARK: - Properties

       private let navigationController = UINavigationController()

       // MARK: - Public API

       var rootViewController: UIViewController {
           return navigationController
       }

}
