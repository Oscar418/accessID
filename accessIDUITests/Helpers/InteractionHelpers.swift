//
//  InteractionHelpers.swift
//  accessIDUITests
//
//  Created by Oscar on 2019/07/24.
//  Copyright © 2019 Oscar. All rights reserved.
//

import Foundation
import XCTest

extension XCTestCase {
    func tapOnButton(_ text: String) {
        tapOnElement(XCUIApplication().buttons[text])
    }
    
    func tapOnElement(_ element: XCUIElement) {
        if (element.waitForExistence(timeout: TestConstants.tenSecondTimeout)) {
            element.tap()
        } else {
            XCTFail("\(element) does not exist")
        }
    }
}
