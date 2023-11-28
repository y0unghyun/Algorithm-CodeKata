//
//  main.swift
//  AscendingSortWithDivisor
//
//  Created by 영현 on 10/30/23.
//

import Foundation

func solution(_ arr:[Int], _ divisor:Int) -> [Int] {
    var result = [Int]()
    for index in arr {
        if index % divisor == 0 {
            result.append(index)
        }
    }
    if result.count == 0 {
        return [-1]
    }
    return result.sorted()
}
