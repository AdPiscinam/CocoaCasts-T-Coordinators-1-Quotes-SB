// Storyboardable.swift
// CocoaCasts-T-Coordinators-1-Quotes-SB
// Created by Ad Piscinam on 28/03/2022
// Copyright © 2022 Code Foundry. All rights reserved.

import UIKit

protocol Storyboardable {
    
    // MARK: - Properties
    
    static var storyboardName: String { get }
    static var storyboardBundle: Bundle { get }
    
    // MARK: -
    
    static var storyboardIdentifier: String { get }
    // MARK: - Methods
    
    static func instantiate() -> Self
}
