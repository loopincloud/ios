//
//  LoopinUITests.swift
//  LoopinUITests
//
//  Created by Pedro Castilho on 12/08/17.
//  Copyright © 2017 TWS. All rights reserved.
//

import XCTest

class LoopinUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        let app = XCUIApplication()
        setupSnapshot(app)
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        app.launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testScreenshots() {
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        XCUIDevice.shared().orientation = .portrait
        
        let app = XCUIApplication()
        let notifButton = app.alerts["“Loopin” Would Like to Send You Notifications"].buttons["Allow"]
        if (notifButton.exists) {
            notifButton.tap()
        }
        
            
        let skipOnboarding = app.buttons["Skip"]
        if (skipOnboarding.exists) {
            skipOnboarding.tap()
        } else {
            app.children(matching: .window).element(boundBy: 0).tap()
            app.children(matching: .window).element(boundBy: 0).tap()
            app.children(matching: .window).element(boundBy: 0).tap()
            app.children(matching: .window).element(boundBy: 0).tap()
        }
        
        snapshot("01-LoginScreen")
        
        
        let usernameTextField = app.textFields["LoginUsernameField"]
        usernameTextField.tap()
        usernameTextField.typeText("appstore")
        
        let passwordSecureTextField = app.secureTextFields["LoginPasswordField"]
        passwordSecureTextField.tap()
        passwordSecureTextField.typeText("dqm9e43epSBMpMYt")
        app.buttons["LoginButton"].tap()
        
        sleep(30)
        
        
        if UIDevice.current.userInterfaceIdiom == .pad {
            let tablesQuery = XCUIApplication().tables
            tablesQuery.cells.staticTexts["Fotos"].tap()
            sleep(5)
            tablesQuery.staticTexts["Hummingbird.jpg"].tap()
            sleep(5)
        }

        snapshot("02-MainScreen")
        app.children(matching: .window).element(boundBy: 0).children(matching: .other).element.children(matching: .other).element.children(matching: .button).element(boundBy: 0).tap()
        
        
        snapshot("03-Upload")
        
        
    }
    
}
