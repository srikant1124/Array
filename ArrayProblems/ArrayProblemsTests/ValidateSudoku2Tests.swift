//
//  ValidateSudoku2Tests.swift
//  MatrixProblemTests
//
//  Created by Kumar jena, Srikant - Srikant on 8/3/20.
//  Copyright © 2020 Kumar jena, Srikant - Srikant. All rights reserved.
//

import XCTest
@testable import ArrayProblems
class ValidateSudoku2Tests: XCTestCase {
    
    var model: ValidateSudoku2!
    override func setUp() {
        super.setUp()
        model = ValidateSudoku2()
    }
    
    override func tearDown() {
        super.tearDown()
        model = nil
    }
    
    
    func testExample() throws {
        let result = model.sudoku2(grid: [[".", ".", ".", "1", "4", ".", ".", "2", "."],
                                          [".", ".", "6", ".", ".", ".", ".", ".", "."],
                                          [".", ".", ".", ".", ".", ".", ".", ".", "."],
                                          [".", ".", "1", ".", ".", ".", ".", ".", "."],
                                          [".", "6", "7", ".", ".", ".", ".", ".", "9"],
                                          [".", ".", ".", ".", ".", ".", "8", "1", "."],
                                          [".", "3", ".", ".", ".", ".", ".", ".", "6"],
                                          [".", ".", ".", ".", ".", "7", ".", ".", "."],
                                          [".", ".", ".", "5", ".", ".", ".", "7", "."]])
        XCTAssertEqual(result, true, "Result should be match")
        
        let result1 = model.sudoku2(grid: [[".", ".", ".", ".", "2", ".", ".", "9", "."],
                                           [".", ".", ".", ".", "6", ".", ".", ".", "."],
                                           ["7", "1", ".", ".", "7", "5", ".", ".", "."],
                                           [".", "7", ".", ".", ".", ".", ".", ".", "."],
                                           [".", ".", ".", ".", "8", "3", ".", ".", "."],
                                           [".", ".", "8", ".", ".", "7", ".", "6", "."],
                                           [".", ".", ".", ".", ".", "2", ".", ".", "."],
                                           [".", "1", ".", "2", ".", ".", ".", ".", "."],
                                           [".", "2", ".", ".", "3", ".", ".", ".", "."]])
        XCTAssertEqual(result1, false, "Result should be match")
    }
    
}
