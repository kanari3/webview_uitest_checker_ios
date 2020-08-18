//
//  webview_uitest_checker_iosUITests.swift
//  webview_uitest_checker_iosUITests
//
//  Created by kanari3 on 2020/08/19.
//  Copyright © 2020 kanari3. All rights reserved.
//

import XCTest

class webview_uitest_checker_iosUITests: XCTestCase {

    override func setUp() {
        continueAfterFailure = false
    }

    func testExample() {
        let app = XCUIApplication()
        app.launch()
        
        
        let textFieldsCount = app.webViews.textFields.count
        XCTAssertEqual(2, textFieldsCount)
        
        let buttonsCount = app.webViews.buttons.count
        XCTAssertEqual(2, buttonsCount)
        
    }

    
}
