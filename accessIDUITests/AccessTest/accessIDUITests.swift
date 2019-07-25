//
//  accessIDUITests.swift
//  accessIDUITests
//
//  Created by Oscar on 2019/07/23.
//  Copyright © 2019 Oscar. All rights reserved.
//

import XCTest

class accessIDUITests: BaseTestCase {
    
    func testEmojiImageExists() {
        navigateToThanos()
        verifyStaticTextExists(containingText: "THE END IS NEAR")
        verifyButtonExists(withText: "Spare the world")
        verifyImageExists(withText: "Shocked emoji")
    }
}
