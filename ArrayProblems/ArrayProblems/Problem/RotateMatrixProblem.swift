//
//  RotateMatrixProblem.swift
//  ProjectEuler
//
//  Created by Kumar jena, Srikant - Srikant on 3/18/20.
//  Copyright © 2020 Kumar jena, Srikant - Srikant. All rights reserved.
//

import Foundation

struct RotateMatrixProblem {
    
    func formingMagicSquare(s: [[Int]]) -> Int {
        let allduplicates = duplicates(matrix: s)
        if allduplicates.isEmpty {
            
        } else {
            print(allduplicates)
        }
        return 0
    }
    
    func duplicates(matrix:[[Int]]) -> [(Int, Int)] {
        var store = [String: String]()
        var result = [(Int, Int)]()
        var duplicates = [String]()
        for i in 0...2 {
            for j in 0...2 {
                let value = matrix[i][j]
                let stringValue = "\(value)"
                if store[stringValue] != nil {
                    store[stringValue] = store[stringValue]! + "," + "\(i) \(j)"
                    duplicates.append(stringValue)
                } else {
                    store[stringValue] = "\(i) \(j)"
                }
            }
        }
        
        for item in duplicates {
            let indexes = store[item]!
            let list = indexes.split(separator: ",")
            if !list.isEmpty {
                for indesx in list {
                    let ij = indesx.split(separator: " ")
                    let i = Int(ij[0])!
                    let j = Int(ij[1])!
                    let pair = (i, j)
                    result.append(pair)
                }
            }
        }
        return result
    }
    
    
    func rotate90DegreeMatrix<T: Comparable>(matrix: inout [[T]]) {
        transposeOf_NxN_Matrix(matrix: &matrix)
        for index in 0..<matrix.count {
            reverseArray(arr: &matrix[index])
        }
        printMatrix(matrix)
    }
    
    private func transposeOf_NxN_Matrix<T: Comparable>(matrix: inout [[T]]) {
        for indexI in 0..<matrix.count {
            for indexj in indexI..<matrix.count {
                let temp = matrix[indexI][indexj]
                matrix[indexI][indexj] = matrix[indexj][indexI]
                matrix[indexj][indexI] = temp
            }
        }
    }
    
    private func reverseArray<T>(arr: inout [T]) {
        if arr.count <= 1 { return }
        let length = arr.count
        for indexI in 0..<(length / 2) {
            let temp = arr[indexI]
            let opi = (length - 1) - indexI
            arr[indexI] = arr[opi]
            arr[opi] = temp
        }
    }
    
    private func printMatrix<T>(_ matrix:[[T]]) {
        for i in 0..<matrix.count {
            for j in 0..<matrix[0].count {
                print(matrix[i][j], separator: " ", terminator: "  ")
            }
            print("\n")
        }
    }
    
    func rotateImage(a: [[Int]]) -> [[Int]] {
        var result = Array(repeating: Array(repeating: 0, count: a.count), count: a.count)
        // Transpose
        for indexI in 0..<a.count {
            for indexj in indexI..<a.count {
                result[indexI][indexj] = a[indexj][indexI]
                result[indexj][indexI] = a[indexI][indexj]
            }
        }
        // Reverse
        let length = result.count - 1
        for index in 0..<result.count {
            for indexI in 0..<length / 2 {
                let temp = result[index][indexI]
                let opi = length - indexI
                result[index][indexI] = result[index][opi]
                result[index][opi] = temp
            }
        }
        printMatrix(result)
        return result
    }
}
