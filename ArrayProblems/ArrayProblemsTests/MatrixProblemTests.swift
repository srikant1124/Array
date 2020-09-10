//
//  MatrixProblemTests.swift
//  MatrixProblemTests
//
//  Created by Kumar jena, Srikant - Srikant on 8/3/20.
//  Copyright © 2020 Kumar jena, Srikant - Srikant. All rights reserved.
//

import XCTest
@testable import ArrayProblems
class MatrixProblemTests: XCTestCase {
    var model: RotateMatrixProblem!
    override func setUp() {
        super.setUp()
        model = RotateMatrixProblem()
    }
    
    override func tearDown() {
        super.tearDown()
        model = nil
    }
    
    func testExample() throws {
        var mat = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
        
        model.rotate90DegreeMatrix(matrix: &mat)
        XCTAssertEqual(mat, [[7,4,1],[8,5,2],[9,6,3]])
        
        var mat1 = [[40,12,15,37,33,11,45,13,25,3],
                    [37,35,15,43,23,12,22,29,46,43],
                    [44,19,15,12,30,2,45,7,47,6],
                    [48,4,40,10,16,22,18,36,27,48],
                    [45,17,36,28,47,46,8,4,17,3],
                    [14,9,33,1,6,31,7,38,25,17],
                    [31,9,17,11,29,42,38,10,48,6],
                    [12,13,42,3,47,24,28,22,3,47],
                    [38,23,26,3,23,27,14,40,15,22],
                    [8,46,20,21,35,4,36,18,32,3]]
        model.rotate90DegreeMatrix(matrix: &mat1)
        XCTAssertEqual(mat1, [[8,38,12,31,14,45,48,44,37,40],
                              [46,23,13,9,9,17,4,19,35,12],
                              [20,26,42,17,33,36,40,15,15,15],
                              [21,3,3,11,1,28,10,12,43,37],
                              [35,23,47,29,6,47,16,30,23,33],
                              [4,27,24,42,31,46,22,2,12,11],
                              [36,14,28,38,7,8,18,45,22,45],
                              [18,40,22,10,38,4,36,7,29,13],
                              [32,15,3,48,25,17,27,47,46,25],
                              [3,22,47,6,17,3,48,6,43,3]])
        
        var mat2 = [[1, 2, 3, 4], [5, 6, 7, 8], [9, 10, 11, 12], [13, 14, 15, 16]]
        model.rotate90DegreeMatrix(matrix: &mat2)
        XCTAssertEqual(mat2, [[13,9,5,1],
                              [14,10,6,2],
                              [15,11,7,3],
                              [16,12,8,4]])
    }
    
}
