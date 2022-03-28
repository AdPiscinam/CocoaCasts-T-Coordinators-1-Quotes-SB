// QuotesTests.swift
// CocoaCasts-T-Coordinators-1-Quotes-SB
// Created by Ad Piscinam on 28/03/2022
// Copyright © 2022 Code Foundry. All rights reserved.

import XCTest
@testable import Quotes

class StoryboardableTests: XCTestCase {

    override func setUpWithError() throws {

    }

    override func tearDownWithError() throws {

    }

    func testQuotesViewController() {
        _ = QuotesViewController.instantiate()
    }
    
    func testSettingsViewController() {
        _ = SettingsViewController.instantiate()
    }

}
