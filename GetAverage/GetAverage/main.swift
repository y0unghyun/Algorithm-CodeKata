//
//  main.swift
//  GetAverage
//
//  Created by 영현 on 10/19/23.
//

import Foundation

func solution(_ arr: [Int]) -> Double {
    var i: Double = 0.0
    var sum: Double = 0.0
    for index in arr {
        sum += Double(index)
        i += 1
    }
    return sum/i
}

