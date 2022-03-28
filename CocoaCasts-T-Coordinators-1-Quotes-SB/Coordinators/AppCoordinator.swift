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
        let quotesViewController = QuotesViewController.instantiate()
        
        // Configure Quotes View Controller
        quotesViewController.didShowQuote = { [weak self] (quote) in
            self?.showQuote(quote)
        }

        // Push Quotes View Controller Onto Navigation Stack
        navigationController.pushViewController(quotesViewController, animated: true)
    }
    
    private func showQuote(_ quote: Quote) {
        // Initialize Quote View Controller
        let quoteViewController = QuoteViewController.instantiate()

        // Configure Quote View Controller
        quoteViewController.quote = quote

        // Push Quote View Controller Onto Navigation Stack
        navigationController.pushViewController(quoteViewController, animated: true)
    }
}
