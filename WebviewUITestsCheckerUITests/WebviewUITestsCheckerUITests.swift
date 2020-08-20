//
//  WebviewUITestsCheckerUITests.swift
//  WebviewUITestsCheckerUITests
//
//  Created by kanari3 on 2020/08/19.
//  Copyright © 2020年 kanari3. All rights reserved.
//

import XCTest

class WebviewUITestsCheckerUITests: XCTestCase {

    let app = XCUIApplication()

    override func setUp() {
        continueAfterFailure = false
        app.launch()
    }

    func testTextFields() {

        let textFieldsCount = app.webViews.textFields.count
        XCTAssertEqual(2, textFieldsCount)

    }

    func testButtons() {

        let buttonsCount = app.webViews.buttons.count
        XCTAssertEqual(2, buttonsCount)

    }
    
}
