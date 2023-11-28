//
//  main.swift
//  SumBetweenTwoNumber
//
//  Created by 영현 on 10/27/23.
//

import Foundation

func solution(_ a:Int, _ b:Int) -> Int64 {
    var sum: Int64 = 0
    if a > b {
        for i in b...a {
            sum += Int64(i)
        }
        return sum
    }
    else {
        for i in a...b {
            sum += Int64(i)
        }
        return sum
    }
    return 0
}

print(solution(-3, 4))
