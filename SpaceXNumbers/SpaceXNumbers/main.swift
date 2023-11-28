//
//  main.swift
//  SpaceXNumbers
//
//  Created by 영현 on 10/19/23.
//

import Foundation
func solution(_ X: Int, _ n: Int) -> [Int64] {
    var array = Array<Int64>()
    var space: Int = 0
    guard (X <= (-10000000) && X >= 10000000 && n <= 1000) else {
        repeat {
            array.append(Int64(X+space))
            space += X
        } while array.count != n
        return array
    }
    return array
}

print(solution(30, 4))
