//
//  VerificationHelpers.swift
//  accessIDUITests
//
//  Created by Oscar on 2019/07/24.
//  Copyright © 2019 Oscar. All rights reserved.
//

import Foundation
import XCTest

extension XCTestCase {
    func verifyImageExists(withText text: String) {
        let element = XCUIApplication().images[text]
        waitForExistence(of: element)
    }
    
    func verifyButtonExists(withText text: String) {
        waitForExistence(of: XCUIApplication().buttons[text], withText: text)
    }
    
    func verifyStaticTextExists(containingText text: String) {
        waitForExistence(of: XCUIApplication().staticTexts.element(matching: NSPredicate(format: "label CONTAINS %@", text)))
    }
    
    func waitForExistence(of element: XCUIElement, withText text: String? = nil, timeout: TimeInterval = TestConstants.fifteenSecondTimeout) {
        var message: String
        if let text = text {
            message = "Failed to find \(element) with text \(text) after \(timeout) seconds."
        } else {
            message = "Failed to find \(element) after \(timeout) seconds."
        }
        XCTAssertTrue(element.waitForExistence(timeout: timeout), message)
    }
}
