//
//  MaximumSubArraySum.swift
//  ArrayProblems
//
//  Created by Kumar jena, Srikant - Srikant on 8/23/20.
//  Copyright © 2020 Kumar jena, Srikant - Srikant. All rights reserved.
//

import Foundation

//https://www.geeksforgeeks.org/largest-sum-contiguous-subarray/
/*
 Write an efficient program to find the sum of contiguous subarray
 within a one-dimensional array of numbers which has the largest sum.
 */

struct MaximumSubArraySum {
    
    func maximumSum(arr: [Int]) -> Int? {
        if arr.isEmpty { return nil }
        if let maxSum = forAllNegativeNumbers(arr: arr) {
            return maxSum
        }
        var maxSum = 0
        var sum = 0
        for number in arr {
            if sum + number > 0 {
                sum += number
            } else {
                sum = 0
            }
            if sum > maxSum {
                maxSum = sum
            }
        }
        return maxSum
    }
    
    private func forAllNegativeNumbers(arr: [Int]) -> Int? {
        var maxNum = Int.min
        for eachNum in arr {
            if eachNum > maxNum {
                maxNum = eachNum
            }
            if eachNum > 0 {
                return nil
            }
        }
        return maxNum
    }
    
    func maximuSubArraySum(arr: [Int], n: Int) -> Int? {
        if arr.isEmpty || arr.count < n { return nil }
        var maxSum = Int.min
        var sum = 0
        
        for index in 0..<arr.count {
            if index >= n {
                sum -= arr[index - n]
            }
            sum += arr[index]
            if sum > maxSum {
                maxSum = sum
            }
        }
        return maxSum
    }
}
