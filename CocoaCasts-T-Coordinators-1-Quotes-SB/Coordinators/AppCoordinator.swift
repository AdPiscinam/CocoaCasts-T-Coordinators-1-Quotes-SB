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
    
    // MARK: -
    
    func start() {
        showQuotes()
    }
    
    // MARK: - Helper Methods
    
    private func showQuotes() {
        // Initialize Quotes View Controller
        guard let quotesViewController = UIStoryboard(name: "Main", bundle: .main).instantiateViewController(withIdentifier: "QuotesViewController") as? QuotesViewController else {
            fatalError("Unable to Instantiate Quotes View Controller")
        }
        
        // Push Quotes View Controller Onto Navigation Stack
        navigationController.pushViewController(quotesViewController, animated: true)
    }
}
