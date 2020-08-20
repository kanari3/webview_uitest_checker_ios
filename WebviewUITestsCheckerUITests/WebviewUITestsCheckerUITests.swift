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
        let textFields = app.webViews.textFields.count
        XCTAssertEqual(2, textFields)
    }

    func testButtons() {
        let buttons = app.webViews.buttons.count
        XCTAssertEqual(2, buttons)
    }

    func testStaticTexts() {
        let staticTexts = app.webViews.staticTexts.count
        XCTAssertEqual(3, staticTexts)
    }

    func testTextView() {
        let textViews = app.webViews.textViews.count
        XCTAssertEqual(2, textViews)
    }


}
