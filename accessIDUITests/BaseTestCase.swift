//
//  BaseTestCase.swift
//  accessIDUITests
//
//  Created by Oscar on 2019/07/24.
//  Copyright © 2019 Oscar. All rights reserved.
//

import XCTest

class BaseTestCase: XCTestCase {
    
    let app = XCUIApplication()
    
    override func setUp() {
        super.setUp()
        continueAfterFailure = false
        XCUIApplication().launch()
    }
    
    override func tearDown() {
        super.tearDown()
        
    }
}
