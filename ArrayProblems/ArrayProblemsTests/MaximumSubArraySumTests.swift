//
//  MaximumSubArraySumTests.swift
//  ArrayProblemsTests
//
//  Created by Kumar jena, Srikant - Srikant on 8/23/20.
//  Copyright © 2020 Kumar jena, Srikant - Srikant. All rights reserved.
//

import XCTest
@testable import ArrayProblems
class MaximumSubArraySumTests: XCTestCase {
    var model: MaximumSubArraySum!
      override func setUp() {
         super.setUp()
         model = MaximumSubArraySum()
     }
     
     override func tearDown() {
         super.tearDown()
         model = nil
     }

    func testExample() throws {
        let result = model.maximumSum(arr: [])
        XCTAssertNil(result, "It should match")
        
        let result1 = model.maximumSum(arr: [-3,-2,-6,-7,-4])
        XCTAssertEqual(result1, -2, "It should match")

        let result2 = model.maximumSum(arr: [-2,-3,4,-1,-2,1,5,-3])
        XCTAssertEqual(result2, 7, "It should match")
        
        let result3 = model.maximumSum(arr: [-2,-3,5,-1,-2,4,-2])
        XCTAssertEqual(result3, 6, "It should match")

    }
    
    func testMaximuSubArraySum() throws {
        let result = model.maximuSubArraySum(arr: [], n: 4)
        XCTAssertNil(result, "It should match")
        
        let result2 = model.maximuSubArraySum(arr: [1,2,5,2,8,1,5], n: 2)
        XCTAssertEqual(result2, 10, "It should match")

        let result3 = model.maximuSubArraySum(arr: [1,2,5,2,8,1,5], n: 4)
        XCTAssertEqual(result3, 17, "It should match")

        let result4 = model.maximuSubArraySum(arr: [4,2,1,6], n: 1)
        XCTAssertEqual(result4, 6, "It should match")

        let result5 = model.maximuSubArraySum(arr: [4,2,1,6,2], n: 4)
        XCTAssertEqual(result5, 13, "It should match")

    }

}
