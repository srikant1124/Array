//
//  CryptSolutionTests.swift
//  MatrixProblemTests
//
//  Created by Kumar jena, Srikant - Srikant on 8/3/20.
//  Copyright © 2020 Kumar jena, Srikant - Srikant. All rights reserved.
//

import XCTest
@testable import ArrayProblems

class CryptSolutionTests: XCTestCase {
    var model: CryptSolution!
     override func setUp() {
          super.setUp()
          model = CryptSolution()
      }
      
      override func tearDown() {
          super.tearDown()
          model = nil
      }

    func testExample() throws {
        let crypt = ["SEND", "MORE", "MONEY"]
        let solution: [[Character]] = [["O", "0"],
                                       ["M", "1"],
                                       ["Y", "2"],
                                       ["E", "5"],
                                       ["N", "6"],
                                       ["D", "7"],
                                       ["R", "8"],
                                       ["S", "9"]]
        let result = model.isCryptSolution(crypt: crypt, solution: solution)
        XCTAssertEqual(result, true, "This should match")
        
        let crypt1 = ["TEN", "TWO", "ONE"]
        let solution1: [[Character]] = [["O", "1"],
                                        ["T", "0"],
                                        ["W", "9"],
                                        ["E", "5"],
                                        ["N", "4"]]
        let result1 = model.isCryptSolution(crypt: crypt1, solution: solution1)
        XCTAssertEqual(result1, false, "This should match")
    }
    
    func testCrypto() {
        let crypt2 = ["A", "A", "A"]
        let solution2: [[Character]] = [["A", "0"]]
        let result2 = model.isCryptSolution(crypt: crypt2, solution: solution2)
        XCTAssertEqual(result2, true, "This should match")
    }
    
    func testCrypto2() {
        let crypt2 = ["TEN",
                      "TWO",
                      "ONE"]
        let solution2: [[Character]] = [["O","1"],
                                        ["T","0"],
                                        ["W","9"],
                                        ["E","5"],
                                        ["N","4"]]
        let result2 = model.isCryptSolution(crypt: crypt2, solution: solution2)
        XCTAssertEqual(result2, false, "This should match")
    }
    
    func testAdd() {
        let result = model.addTwoDigits(n: 29)
        XCTAssertEqual(result, 11, "")
    }

}
