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

    func testTextView() {
        let textViews = app.webViews.textViews.count
        XCTAssertEqual(2, textViews)
    }


    func testTextFieldsWithWait() {
        let textFields = app.webViews.textFields.element(boundBy: 1).waitForExistence(timeout: 5)
        XCTAssertTrue(textFields)
    }

    func testButtonsWithWait() {
        let buttons = app.webViews.buttons.element(boundBy: 1).waitForExistence(timeout: 5)
        XCTAssertTrue(buttons)
    }

    func testStaticTextsWithWait() {
        let staticTexts = app.webViews.staticTexts["StaticText"].waitForExistence(timeout: 5)
        XCTAssertTrue(staticTexts)
    }

    func testTextViewWithWait() {
        let textViews = app.webViews.textViews.element(boundBy: 1).waitForExistence(timeout: 5)
        XCTAssertTrue(textViews)
    }



}
