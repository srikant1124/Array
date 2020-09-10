//
//  ValidateSudoku2.swift
//  MatrixProblem
//
//  Created by Kumar jena, Srikant - Srikant on 8/3/20.
//  Copyright © 2020 Kumar jena, Srikant - Srikant. All rights reserved.
//

import Foundation

struct ValidateSudoku2 {
    
    func isValid(row: Int, col: Int, map: inout [Character: Bool], sudoku: [[Character]]) -> Bool {
        let char = sudoku[row][col]
        if char != "." {
            if map[char] == nil {
                map[char] = true
            } else {
                return false
            }
        }
        return true
    }
    
    func checkBlock(grid: [[Character]], rowRange: (Int, Int), colRange: (Int, Int)) -> Bool {
        var block = [Character: Bool]()
        for index in rowRange.0...rowRange.1 {
            for indexJ in colRange.0...colRange.1 {
                if !isValid(row: index, col: indexJ, map: &block, sudoku: grid) {
                    return false
                }
            }
        }
        return true
    }
    
    func chcekRowCol(grid: [[Character]], isRow: Bool = false) -> Bool {
        for index in 0...8 {
            var rowColumn = [Character: Bool]()
            for indexJ in 0...8 {
                if isRow {
                    if !isValid(row: index, col: indexJ, map: &rowColumn, sudoku: grid) {
                        return false
                    }
                } else {
                    if !isValid(row: indexJ, col: index, map: &rowColumn, sudoku: grid) {
                        return false
                    }
                }
            }
        }
        return true
    }
    
    func sudoku2(grid: [[Character]]) -> Bool {
        if grid.count != 9 || grid[0].count != 9 { return false }
        let ranges = [[0,2,0,2],[3,5,0,2],[6,8,0,2],[0,2,3,5],[3,5,3,5],[6,8,3,5],[0,2,6,8],[3,5,6,8],[6,8,6,8]]
        for range in ranges {
            if !checkBlock(grid: grid, rowRange: (range[0], range[1]), colRange: (range[2], range[3])) {
                return false
            }
        }
        
        let isAllRowValid = chcekRowCol(grid: grid, isRow: true)
        let isAllColValid = chcekRowCol(grid: grid)
        
        if !isAllRowValid || !isAllColValid {
            return false
        }
        return true
    }
}
