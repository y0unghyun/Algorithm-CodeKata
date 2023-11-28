//
//  main.swift
//  SquareNumberDicision
//
//  Created by 영현 on 10/20/23.
//

import Foundation

func solution(_ n:Int64) -> Int64 {
    guard(n < 1 && n > 50000000000000) else {
        var i: Int64 = 0
        let x: Int64 = Int64(sqrt(Double(n)))
            if (x * x == n) {
                i = x + 1
                return i*i
            } else { return -1 }
    }
    return 0
}

print(solution(120))
