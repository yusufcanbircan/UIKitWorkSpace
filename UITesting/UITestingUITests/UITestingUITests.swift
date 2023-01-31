//
//  UITestingUITests.swift
//  UITestingUITests
//
//  Created by Yusuf Can Bircan on 31.01.2023.
//

import XCTest

final class UITestingUITests: XCTestCase {


    func testToDoItem() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()

        // Use XCTAssert and related functions to verify your tests produce the correct results.

        let addButton = app.navigationBars["UITesting.View"].buttons["Add"]
        
        let elementsQuery = app.alerts["New Item"].scrollViews.otherElements
        let textField = elementsQuery.collectionViews/*@START_MENU_TOKEN@*/.textFields["Enter Item"]/*[[".cells.textFields[\"Enter Item\"]",".textFields[\"Enter Item\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        let okButton = elementsQuery.buttons["Okay"]
        let cell = app.tables.cells.containing(.staticText, identifier:"test").element
        
        addButton.tap()
        textField.tap()
        textField.typeText("test")
        okButton.tap()
        XCTAssertTrue(cell.exists)
        
    }
    
    func testDeleteButton() throws {
        
        let app = XCUIApplication()
        app.launch()

        // Use XCTAssert and related functions to verify your tests produce the correct results.

        let addButton = app.navigationBars["UITesting.View"].buttons["Add"]
        
        let elementsQuery = app.alerts["New Item"].scrollViews.otherElements
        let textField = elementsQuery.collectionViews/*@START_MENU_TOKEN@*/.textFields["Enter Item"]/*[[".cells.textFields[\"Enter Item\"]",".textFields[\"Enter Item\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        let okButton = elementsQuery.buttons["Okay"]
        let cell = app.tables.cells.containing(.staticText, identifier:"test").element
        
        let tablesQuery = app.tables
        let deleteButton = tablesQuery.buttons["Delete"]
        
        addButton.tap()
        textField.tap()
        textField.typeText("test")
        okButton.tap()
        cell.swipeLeft()
        deleteButton.tap()

        XCTAssertFalse(cell.exists)
        
    }
}
