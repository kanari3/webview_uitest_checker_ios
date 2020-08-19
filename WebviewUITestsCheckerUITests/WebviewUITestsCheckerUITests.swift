//
//  webview_uitest_checker_iosUITests.swift
//  webview_uitest_checker_iosUITests
//
//  Created by kanari3 on 2020/08/19.
//  Copyright © 2020 kanari3. All rights reserved.
//

import XCTest

class webview_uitest_checker_iosUITests: XCTestCase {

    let app = XCUIApplication()

    override func setUp() {
        continueAfterFailure = false
        app.launch()
    }

    func testTextFields() {

        let textFieldsCount = app.webViews.textFields.count
        XCTAssertEqual(0, textFieldsCount)

    }

    func testButtons() {

        let buttonsCount = app.webViews.buttons.count
        XCTAssertEqual(0, buttonsCount)

    }


}
