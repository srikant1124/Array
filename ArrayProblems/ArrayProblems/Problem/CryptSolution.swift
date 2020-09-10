//
//  CryptSolution.swift
//  MatrixProblem
//
//  Created by Kumar jena, Srikant - Srikant on 8/3/20.
//  Copyright © 2020 Kumar jena, Srikant - Srikant. All rights reserved.
//

import Foundation

struct CryptSolution {
    func isCryptSolution(crypt: [String], solution: [[Character]]) -> Bool {
        var solutionMap = [Character: Int]()
        for item in solution {
            let key = item[0]
            let value = Int("\(item[1])") ?? 0
            if solutionMap[key] == nil {
                solutionMap[key] = value
            }
        }
        let numbers = getNumber(words: crypt, map: solutionMap)
        if numbers.isEmpty { return false }
        if numbers[0] + numbers[1] == numbers[2] {
            return true
        }
        return false
    }
    
    func getNumber(words: [String], map: [Character: Int]) -> [Int] {
        var arr = [Int]()
        for each in words {
            if let char = each.first,
                let num = map[char],
                num == 0,
                each.count > 1 {
                return []
            }
            var sum = 0
            var power = NSDecimalNumber(decimal: pow(10, each.count - 1)).intValue
            for char in each {
                if let num = map[char] {
                    sum += power * num
                    power = power / 10
                }
            }
            arr.append(sum)
        }
        if arr.count == 2 {
            arr.append(0)
        }
        return arr
    }
    
    func addTwoDigits(n: Int) -> Int {
      var number = n
            var sum = 0
            
            while number != 0 {
                let remainder = number % 10
                sum += remainder
                number = number / 10
            }
            return sum
    }
    
}
