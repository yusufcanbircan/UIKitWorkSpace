//
//  UnitTestingTests.swift
//  UnitTestingTests
//
//  Created by Yusuf Can Bircan on 31.01.2023.
//

import XCTest
@testable import UnitTesting

final class UnitTestingTests: XCTestCase {

   let math = MathematicFunctions()
    
    func testAddFunction() {
        let result = math.add(x: 5, y: 5)
        XCTAssertEqual(result, 10)
    }
    
    func testSubtractFunction() {
        let result = math.subtract(x: 5, y: 5)
        XCTAssertEqual(result, 0)
    }
    
    func testDivideFunction() {
        let result = math.divide(x: 5, y: 5)
        XCTAssertEqual(result, 1)
    }

}
