//
//  main.swift
//  SumOfMeasures
//
//  Created by 영현 on 10/19/23.
//

import Foundation

func solution(_ n:Int) -> Int {
    var sum: Int = 0
    for i in 1...n {
        if n%i == 0 {
            sum += i
        }
    }
    return sum
}

print(solution(12))
