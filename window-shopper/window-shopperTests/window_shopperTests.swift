//
//  window_shopperTests.swift
//  window-shopperTests
//
//  Created by Fragoso, Hector on 2/17/20.
//  Copyright © 2020 Fragoso, Hector. All rights reserved.
//

import XCTest

class window_shopperTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testGetHours() {
        //Basic test
        XCTAssert(Wage.getHours(forWage: 25, andPrice: 100) == 4)
        //Roundup test: Result should always round up
        XCTAssert(Wage.getHours(forWage: 15.50, andPrice: 250.53) == 17)
        //input == 0 tests
        XCTAssert(Wage.getHours(forWage: 0, andPrice: 100) == nil)
        XCTAssert(Wage.getHours(forWage: 100, andPrice: 0) == 0)
        XCTAssert(Wage.getHours(forWage: -15, andPrice: 100) == nil)
        XCTAssert(Wage.getHours(forWage: 100, andPrice: -15) == nil)
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        measure {
            // Put the code you want to measure the time of here.
        }
    }

}
